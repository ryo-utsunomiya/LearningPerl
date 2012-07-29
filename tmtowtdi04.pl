use strict;
use warnings;

my @word = qw(There's more than one way to do it.);
foreach my $word (@word) {
	print "$word ";
}
print "\n";
print join(' ', @word), "\n";
