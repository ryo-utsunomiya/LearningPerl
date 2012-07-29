use strict;
use warnings;

foreach (keys %ENV) {
	print "$_ → $ENV{$_}\n";
}
