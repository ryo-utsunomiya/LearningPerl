use strict;
use warnings;

my %counter;
my @name = qw(yuki Tomura Sato Sato Yuki Mamoru Tomura Tomura);
foreach my $name (@name) {
	$counter{$name}++;
}
foreach my $name (sort keys %counter) {
	print "$name $counter{$name}\n";
}
