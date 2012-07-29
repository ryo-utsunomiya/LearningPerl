use strict;
use warnings;

my $time = '01:23:45';
my ($hour, $min, $sec) = split(/:/, $time);

print "$hour時$min分$sec秒です。\n";
