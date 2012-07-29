use strict;
use warnings;

my @name = ('Hiroshi Yuki', 'Hanako Sato', 'Tomura');
foreach my $item (sort(@name)) {
	print "$item\n";
}
