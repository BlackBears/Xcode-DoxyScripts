#!/usr/bin/perl -w
use strict;

#   get the current selection as command-line argument
my $selection = $ARGV[0];
chomp $selection;
my $unmodifiedSelection = $selection;

my $propertyName;
if( $selection =~ m|\@property\s+.+\)\s+\D+\s+\*?\s?(.+);| ) {
    $propertyName = $1;
    print "/**\n";
    print " *   \@property  $propertyName\n";
    print " *   \@brief     <#(brief description of property)#>\n";
    print " *   \@details   <#(detailed description of property)#>\n";
    print " */\n";
}
print $unmodifiedSelection;

exit 0;


