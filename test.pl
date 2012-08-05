use strict;
use warnings;

my $pattern = "";
my $string = "point0";

if ($string =~ /^point[^5\D]$/) {
	print "$& --- Match!\n";
} else {
	print "No match\n";
}
