# Functions for use with the e glob flag

in() { [[ -e $1/$REPLY ]] }

empty() { a=( $REPLY/*(N[1]) ); (( ! $#a )) }

fattr() {
  local val=${${${(s.=.)$(getfattr -n user.$1 $REPLY 2>/dev/null)}[2]%\"}#\"}
  [[ -z $val ]] && return 1
  [[ -z $2 ]] && return 0
  [[ $val = $~2 ]]
}

# Functions to display values of environment variables

# ev disp shows the values of env variables whose names start with "disp" (case insensitive), such as DISPLAY.
ev() {
    echo
    set | egrep -i \^$1 |sed -e 's/=/     /' -e '/^PATH/d' -e '/^CDPATH/d' | sort
    echo
}

# eva lib does the same but "lib" can be in the middle of the name.
eva() {
    echo
    set | egrep -i "^[a-z_]*$1" |sed -e 's/=/     /' -e '/^PATH/d' -e '/^CDPATH/d' | sort
    echo
}


# Smart cd
# - cd /etc/fstab → cd /etc
# - corrections on the given dirname (if directory could not be found)
# - all(?) other possible invocations of the builtin 'cd'

function smart_cd () {
  if [[ -f $1 ]] ; then
    [[ ! -e ${1:h} ]] && return 1
    print correcting ${1} to ${1:h}
    builtin cd ${1:h}
  else
    builtin cd ${1}
  fi
}

function cd () {
  setopt localoptions
  setopt extendedglob
  local approx1 ; approx1=()
  local approx2 ; approx2=()
  if (( ${#*} == 0 )) || [[ ${1} = [+-]* ]] ; then
    builtin cd "$@"
  elif (( ${#*} == 1 )) ; then
    approx1=( (#a1)${1}(N) )
    approx2=( (#a2)${1}(N) )
    if [[ -e ${1} ]] ; then
      smart_cd ${1}
    elif [[ ${#approx1} -eq 1 ]] ; then
      print "correcting ${1} to ${approx1[1]}" >&2
      smart_cd ${approx1[1]}
    elif [[ ${#approx2} -eq 1 ]] ; then
      print "correcting ${1} to ${approx2[1]}" >&2
      smart_cd ${approx2[1]}
    else
      print "couldn't correct ${1}" >&2
    fi
  elif (( ${#*} == 2 )) ; then
    builtin cd $1 $2
  else
    print "cd: too many arguments" >&2
  fi
}

