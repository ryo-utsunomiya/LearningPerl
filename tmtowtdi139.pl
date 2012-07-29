use strict;
use warnings;

my %motto = (
'Perl' => 'There\'s more than one way to do it.',
'Java' => 'Write once, run anywhere.',
);
foreach my $lang (keys %motto) {
	print "$lang\n\t$motto{$lang}\n";
}
