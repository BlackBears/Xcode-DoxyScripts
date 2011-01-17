(*
 *	Library of handlers common to DoxyScripts
 *)

on getSelectionFromActiveXcodeSourceDocument()
	tell application "Xcode"
		activate
		(* 
			the Xcode dictionary appears not to expose the current source document being edited;
			so this workaround loops through every source document until finding one
			that has a selection.
		*)
		delay 0.1
		repeat with aDocument in every document
			try
				-- get the selected range, if 1st item > 2nd item then nothing
				-- was selected, in which case notify user and bail.
				-- if error -1728 generated, then there isn't even an insertion point
				-- in that document.
				set selectedRange to the selected character range of aDocument
				if first item of selectedRange > second item of selectedRange then
					display dialog "Nothing selected"
					return -999
				else
					return selectedRange
				end if
			on error
				--nothing			
			end try
		end repeat
	end tell
	return -999
end getSelectionFromActiveXcodeSourceDocument

(*
 *	make the substitution by getting the selection, convertion RTF to string
 *	assembling a shell script, then executing the script and pasting result
 *	back into Xcode
 *)
on substituteSelectionWithScriptPath(theSelection, scriptPath)
	set selectedTextRTF to copySelectionFromXcode() of me
	delay 0.5
	try
		set the clipboard to string of (the clipboard as record)
		set plainTextSelection to the clipboard
	on error errMsg
		display dialog errMsg
	end try
	set scriptCommand to shellScriptWithSelectionWithScriptPath(plainTextSelection, scriptPath) of me
	set scriptResponse to responseWithShellScript(scriptCommand) of me
	pasteTextIntoXcodeDocument(scriptResponse) of me
end substituteSelectionWithScriptPath

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
on shellScriptWithSelectionWithScriptPath(plainTextSelection, shellScriptPath)
	set shellScriptCommand to shellScriptPath & " " & quoted form of plainTextSelection
	return shellScriptCommand
end shellScriptWithSelectionWithScriptPath

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