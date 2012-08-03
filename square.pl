use strict;
use warnings;

my @square = ();
foreach my $item (0..9) {
	push(@square, $item ** 2);
}
print "@square";
