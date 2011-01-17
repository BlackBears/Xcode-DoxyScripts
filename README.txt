
Xcode version [REDACTED] does not implement a built-in script menu.

This suite of scripts is intended to bridge that gap in functionality until it is implemented in Xcode version [REDACTED].  Specifically, it allows users to document their source files using Doxygen.

INSTALLATION:
(1) Download the files from the repository.
(2) Move the file Class block - Doxygen to ~/Library/Scripts/Xcode
(3) Enable the Script menu by in AppleScript Editor -> Preferences
(4) Move the file Doxygen-class.pl to any location you desire.
(5) Edit Class block - Doxygen.scpt file to update the following line:
    set shellScriptPath to "~/Development/Scripts/Doxygen-class.pl"

USAGE:
(1) Currently the scripts contain only an example to document the class declaration.  More functionality is planned.
(2) Go to the header file you wish to document.
(3) Highlight the @interface line
(4) Select the Class block - Doxygen script from the script menu.
(5) Fill in the details in the documentation block.