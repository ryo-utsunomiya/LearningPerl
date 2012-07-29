use strict;
use warnings;

my %uniq;
my @array = qw(3 1 4 1 5 9 2 6 5 3 5);
foreach my $item (@array) {
	$uniq{$item} = 1;
}
my @uniqarray = keys(%uniq);
print "@uniqarray\n";
