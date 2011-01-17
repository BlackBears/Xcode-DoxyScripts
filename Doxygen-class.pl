#! /usr/bin/perl -w
# Insert Doxygen template for class

#   This script is largely based on scripts provided with Xcode 3.x
#   for documenting using HeaderDoc

use strict;

#   Get the selection from the script arguments instead of a stream from
#   Xcode as the original script had done
my $selection = $ARGV[0];
chomp $selection;
my $unmodifiedSelection = $selection;
$selection =~ s/\n/ /sg;     # put on one line, if necessary
$selection =~ s/\s+$//;      # remove any trailing spaces
$selection =~ s/\s{2,}/ /g;  # regularize remaining spaces

my $type = "\@class";

my $typeString = "$type";
if (($type eq "\@class") || ($type eq "\@category")) {
    if (length($selection) && ($selection =~ /^\@interface/)) {
        my $tempString;
        # get rid of '@interface'
        ($tempString = $selection) =~ s/\@interface//;
        # remove spaces
        $tempString =~ s/\s+//;
        # find out if there's a superclass
        my @classes = split(/:/, $tempString);
        my $className = $classes[0];
        $typeString = "$type       $className";
    }
}

#   output to AppleScript for substitution back into Xcode
print "/**\n";
print " *   $typeString\n";
print " *   \@abstract    <#(brief description)#>\n";
print " *   \@details     <#(comprehensive description)#>\n";
print " *   \n";
print " *   \n";
print " *   \@notes       <#(notes/cautions about this class)#>\n";
print "*/\n";
print $unmodifiedSelection;
exit 0;


