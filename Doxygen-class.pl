#! /usr/bin/perl -w
# Insert Doxygen template for class
use strict;

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

        #my $superclassEtc = '';
        #if (scalar(@classes) > 1) {
        #    $superclassEtc = $classes[1];
        #    $typeString .= "\n    \@superclass $superclassEtc";
        #}
    }
}

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


