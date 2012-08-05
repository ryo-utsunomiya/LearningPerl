use strict;
use warnings;

my @line = (
	"HUmpty Dumpty sat on a wall.",
);
foreach (@line) {
	print "before:$_\n";
	foreach (/[\w']+/g) {
		print "\tinner:$_\n";
	}
	print " after:$_\n";
}
