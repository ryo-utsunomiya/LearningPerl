use strict;
use warnings;

my @hex = ('0'..'9', 'A'..'F');
foreach my $left (@hex) {
	foreach my $right (@hex) {
		print $left, $right, ' ';
	}
	print "\n";
}
