global shellScriptPath

-- NOTE: modify scriptLibraryPath to point to the shared library
set scriptLibraryPath to "~/Library/Scripts/Xcode/DoxyScriptLib.scpt"

-- NOTE: modify shellScriptPath to point to Doxygen-class.pl script
set shellScriptPath to "~/Development/Scripts/Doxygen-class.pl"

-- if the path includes tilde, expand it
set expandedTildePath to expandTilde(scriptLibraryPath) of me
-- load the shared library
set scriptLib to load script POSIX file expandedTildePath as alias

set xcodeSelection to getSelectionFromActiveXcodeSourceDocument() of scriptLib
if xcodeSelection is equal to -999 then
	-- bail if no selection
	return
end if
substituteSelectionWithScriptPath(xcodeSelection, shellScriptPath) of scriptLib

(*
	Code for tilde expansion by Adrian Nier and is used here
	with attribution.
	URL:  http://www.mac-spezialist.de/code/
*)
on expandTilde(_posixPath)
	if _posixPath does not start with "~" then return _posixPath
	set _homeFolderPath to POSIX path of (path to home folder)
	set _prvDlmt to text item delimiters
	set text item delimiters to ""
	if _homeFolderPath ends with "/" then
		set _homeFolderPath to characters 1 thru -2 of _homeFolderPath as string
	end if
	try
		set _posixPath to _homeFolderPath & characters 2 thru -1 of _posixPath as string
	on error
		set _posixPath to _homeFolderPath
	end try
	set text item delimiters to _prvDlmt
	return _posixPath
end expandTilde