use strict;
use warnings;

foreach my $value (0..255) {
	printf("%02X ", $value);
	print "\n", if ($value % 16 == 15);
}
