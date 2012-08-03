use strict;
use warnings;

my %hash = (
	'Hiroshi Yuki' => 36,
	'Hanako Sato' => 24,
	'Tomura' => 22,
);
my $sum = 0;
foreach my $val (values(%hash)) {
	$sum += $val;
}
print $sum, "\n";
