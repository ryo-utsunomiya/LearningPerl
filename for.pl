use strict;
use warnings;

my @number = qw(3 14 1 59 2 65 358);
my $sum = 0;
foreach my $item (@number) {
	$sum += $item;
}
print $sum, "\n";
