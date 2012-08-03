use strict;
use warnings;

my %hash = (
'Hiroshi Yuki' => 36,
'Hanako Sato' => 24,
'Tomura' => 22,
);

foreach my $key (keys(%hash)) {
	my $value = $hash{$key};
	print "$key は $value 歳です。\n";
}
