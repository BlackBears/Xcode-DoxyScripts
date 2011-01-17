global currentSourceDoc
global shellScriptPath

(* *** NOTE: this path needs to be modified to point to wherever your saved Doxygen-class.pl  *** *)
set shellScriptPath to "~/Development/Scripts/Doxygen-class.pl"

tell application "Xcode"
	activate
	(* 
		the Xcode dictionary appears not to expose the current source document being edited;
		so this workaround loops through every source document until finding one
		that has a selection.
	*)
	repeat with aDocument in every document
		try
			set testSelection to selection of aDocument
			(*
				make sure this is a real selection and not just an insertion point
			*)
			try
				properties of testSelection
			on error errMsg number errNum
				if errNum is -1720 then
					substituteSelection(testSelection) of me
				end if
			end try
			
		on error
			--nothing			
		end try
	end repeat
end tell

(*
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
 *)
on substituteSelection(theSelection)
	set selectedTextRTF to copySelectionFromXcode() of me
	delay 0.5
	try
		set the clipboard to string of (the clipboard as record)
		set plainTextSelection to the clipboard
	on error errMsg
		display dialog errMsg
	end try
	set scriptCommand to shellScriptWithSelection(plainTextSelection) of me
	set scriptResponse to responseWithShellScript(scriptCommand) of me
	pasteTextIntoXcodeDocument(scriptResponse) of me
end substituteSelection

(*
 *	Get the contents of the selection from Xcode onto the pasteboard
 *)
on copySelectionFromXcode()
	tell application "System Events"
		tell process "Xcode"
			keystroke "c" using {command down}
		end tell
	end tell
end copySelectionFromXcode

(*
 * Assemble the shell script
 *)
on shellScriptWithSelection(plainTextSelection)
	set shellScriptCommand to shellScriptPath & " " & quoted form of plainTextSelection
	return shellScriptCommand
end shellScriptWithSelection

(*
 *	Execute the shell script and return its response
 *)
on responseWithShellScript(theShellScript)
	set response to do shell script theShellScript
	return response
end responseWithShellScript

(*
 *	Paste modified (and original) text back into Xcode, replacing the original
 *	selection.
 *)
on pasteTextIntoXcodeDocument(modifiedText)
	set the clipboard to modifiedText
	tell application "System Events"
		tell process "Xcode"
			keystroke "v" using {command down}
		end tell
	end tell
end pasteTextIntoXcodeDocument