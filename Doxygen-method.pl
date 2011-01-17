#! /usr/bin/perl -w
# 
#   Inserts Doxygen documentation block for an Objective-C method
#   declared in Xcode header file
#
#
#   This script is largely based on a script with this functionality
#   and distributed with Xcode 3.x

use strict;

#   Obtain selection from the script arguments
my $selection = $ARGV[0];
chomp $selection;
my $unmodifiedSelection = $selection; # used to retain linebreaks in output

$selection =~ s/\n/ /sg;     # put on one line, if necessary
$selection =~ s/\s+$//;      # remove any trailing spaces
$selection =~ s/\s{2,}/ /g;  # regularize remaining spaces

my $displayMethodName= '';
my $returnsAValue= 0;
my @params = ();

# is it a method declaration that we understand?
if (length($selection) && ($selection =~ /^[+-]/) && ($selection =~ /;$/)) {
    # determine if it returns a value
    $selection =~ m/[+-]\s+(\((.*?)\))?(.*);/;
	my $return = $2;
	my $fullMethodName = $3;
	if ((defined($return)) && ($return ne 'void')) {$returnsAValue=1;};
	
	if (defined($fullMethodName)) {
	    # get rid of type info for args
	    $fullMethodName =~ s/\(.*?\)//g;
	    
		if ($fullMethodName =~ /:/) {
			# get keyword:arg pairs
			my @keyArgPairs = split(/\s+/, $fullMethodName);
			
			foreach my $pair (@keyArgPairs) {
				if ($pair =~ /:/) { # don't treat parameters with spaces as method names
				    my @parts = split(/:/, $pair);
				    while (@parts) {
					    $displayMethodName .= shift(@parts).":";
					    push (@params, shift @parts);
				    }
				} else {
				    if (length($pair)) { # but do add them to the parameter list
					push (@params, $pair);
				    }
				}
			}
		} else {
			$displayMethodName = $fullMethodName;
		}
	}
}

print "/**\n";
print " *    \@method    $displayMethodName\n";
print " *    \@brief     <#(brief description of method)#>\n";
print " *    \@details   <#(comprehensive description)#>\n";

foreach my $param (@params) {
	print "*    \@param     $param <#(description of parameter)#>\n" if (defined($param));
}

print " *    \@result   <#(description)#>\n" if ($returnsAValue);
print " */\n";
print $unmodifiedSelection;

exit 0;


