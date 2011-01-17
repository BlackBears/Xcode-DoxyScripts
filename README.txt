
Xcode version [REDACTED] does not implement a built-in script menu.

This suite of scripts is intended to bridge that gap in functionality until it is implemented in Xcode version [REDACTED].  Specifically, it allows users to document their source files using Doxygen.

INSTALLATION:
(1) Download the files from the repository.
(2) Move the file Xcode-Doxyscript-Class to ~/Library/Scripts/Xcode
(2a) Move the file DoxyScriptLib to any location you like
(3) Enable the Script menu by in AppleScript Editor -> Preferences
(4) Move the file Doxygen-class.pl to any location you desire.
(5) Edit Xcode-Doxyscript-Class AppleScript file to update the following lines:
    set scriptLibraryPath to POSIX file path-to-DoxyScriptLib-file    set shellScriptPath to path-to-Doxygen-class.pl-file

USAGE:
(1) Currently the scripts contain only an example to document the class declaration.  More functionality is planned.
(2) Go to the header file you wish to document.
(3) Highlight the @interface line
(4) Select the Xcode-Doxyscript-Class script from the script menu.
(5) Fill in the details in the documentation block.