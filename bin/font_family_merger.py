# For getting files:
import os

# For moving files around:
import shutil

# For converting fonts to xml and vice versa:
from fontTools import ttx

# For processing the xml from fonts
import lxml
from bs4 import BeautifulSoup
from bs4 import NavigableString

def decide():
    # For those burning questions
    yes = set(['yes', 'y', 'ye', ''])
    no = set(['no', 'n'])

    while True:
        choice = raw_input('Correct? [Y/n]:').lower()
        if choice in yes:
            return True
        elif choice in no:
            return False
        else:
            print "Please respond with 'yes' or 'no'"

def changeFont(files):
    for file in files:
        print "Begin processing:   " + file

        # Get data from xml file and close it
        with open(file, 'r+') as fileOpen:
            data = fileOpen.read()
            fileOpen.close()

        # Parse xml data with BeautifulSoup
        soup = BeautifulSoup(data,'xml')

        #Initialize names list
        names = []

        #Main platformIDs and nameIDs to check for
        nameID = {
            '1': {
                '1': False,
                '2': False
            },
            '3': {
                '1': False,
                '2': False
            }
        }

        # Get the name from the namerecords
        for name in soup.findAll('namerecord'):
            # Get the xml attributes for the namerecord tag
            nameAttrs = dict(name.attrs)
            # Only check the main platformIDs
            if (nameAttrs[u'platformID'] == "1" or nameAttrs[u'platformID'] == "3"):
                # If the namerecord is there then it is found
                nameID[nameAttrs[u'platformID']][nameAttrs[u'nameID']] = True
                # Set the names of the file if they exist and aren't set
                if name.string and not name.string.isspace() and not names:
                    # Ask use if this is the correct font family and variation mishmash
                    if 'mishmash' not in locals():
                        mishmash = False
                    if not mishmash:
                        print "Name to regex:      " + name.string.strip(' \t\n\r')
                        mishmash = decide()
                    # If there isn't a mishmash skip setting the name
                    if mishmash:
                        # User will input the regex to split the strings
                        if 'regex' not in locals():
                            regex = ""
                            while regex == "":
                                regex = raw_input('Enter your regex:   ')
                                regex = regex or ""
                        if 'repeat' not in locals():
                            repeat = False
                            while not isinstance( repeat, ( int, long ) ):
                                repeat = input('Regex repetion [1]: ')
                                repeat = repeat or 1
                                if not isinstance( repeat, ( int, long ) ):
                                    print "Please enter an integer"
                        # Use entered regex and repetition to split mishmash
                        names = name.string.strip(' \t\n\r').split(regex,repeat)

                        # Sometimes the normal fonts have no variation name
                        if len(names) == 1:
                            names.append("Regular")
                        elif names[1].isspace() or not names[1]:
                            names[1] = "Regular"

                        # Strip extra whitespace from both font family and variation
                        names[0] = str(regex).strip(' \t\n\r')
                        names[1] = names[1].strip(' \t\n\r')

        if not names:
            raise Exception("No font names found!")

        # Print the new names
        print "New font family:    " + names[0]
        print "New font variation: " + names[1]

        # Check if the main nameIDs are missing
        for ID, platform in nameID.iteritems():
            for ID, found in platform.iteritems():
                if not found:
                    # Add missing namerecord
                    namerecord = soup.new_tag(
                        "namerecord",
                        nameID=ID,
                        platformID="1",
                        platEncID="1",
                        langID="0x0"
                    )
                    soup.find('name').insert(int(ID), namerecord)

        # Change the name in the namerecords
        for name in soup.findAll('namerecord'):
            # Get the xml attributes for the namerecord tag
            nameAttrs = dict(name.attrs)
            # Only check the main platformIDs
            if nameAttrs[u'platformID'] == "1" or nameAttrs[u'platformID'] == "3":
                if nameAttrs[u'nameID'] == "1":
                    #Clear the namerecord if we can
                    if type(name) != "NoneType":
                        name.clear();
                    name.append(names[0])
                if nameAttrs[u'nameID'] == "2":
                    #Clear the namerecord if we can
                    if type(name) != "NoneType":
                        name.clear();
                    name.append(names[1])

        # Write the data to a file if names were found
        newFileName = names[0] + "-" + names[1] + ".ttx"
        data = soup.prettify("utf-8")
        with open(file, 'w') as fileClose:
            fileClose.write(data)
        os.renames(file, newFileName)
        print "-----------------------------------"

def getFilesWith(extensions):
    files = []
    for extension in extensions:
        for file in [file for file in os.listdir('.') if os.path.isfile(file)]:
            if file.endswith(extension):
                files.append(file)
    return files

if __name__ == "__main__":
    # Create a directory to do work in
    if not os.path.exists("merged_fonts"):
        os.makedirs("merged_fonts")

    # Copy all fonts to our directory so we don't corrupt the originals
    for file in getFilesWith([".ttf",".otf"]):
        shutil.copy(file,"merged_fonts")

    # Change our working directory to our new one
    os.chdir("merged_fonts")

    #Convert fonts to xml and catch any exceptions
    for file in getFilesWith([".ttf",".otf"]):
        try:
            ttx.main([file])
            print "-----------------------------------"
        except Exception as e:
            print "Something went wrong converting ttf/otf -> ttx:"
            print e
            pass

    # Remove the old fonts that have been converted to xml
    for file in getFilesWith([".ttf",".otf"]):
        os.remove(file)

    # Change font names
    changeFont(getFilesWith([".ttx"]))

    # Convert xml back to fonts
    for file in getFilesWith([".ttx"]):
        try:
            ttx.main([file])
            print "-----------------------------------"
        except Exception as e:
            print "Something went wrong converting ttx -> ttf/otf:"
            print e
            pass

    # Remove the old xml that have been converted back to fonts
    for file in getFilesWith([".ttx"]):
        os.remove(file)
