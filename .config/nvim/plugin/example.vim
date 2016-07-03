
let OS=substitute(system('uname -s'),"\n","","")
if (OS == "Darwin")
	" do something that only makes sense on a Mac
endif
