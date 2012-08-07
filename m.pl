use strict;
use warnings;

my $str = "point123\npoint456\npoint789.\npoint012";
while ($str =~ /\d+$/g) {
	print "$&\n";
}
