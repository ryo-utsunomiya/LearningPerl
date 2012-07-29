use strict;
use warnings;

my %sum;
open(FILE, 'log.txt') or die "$!";
while (<FILE>) {
    $sum{$1} += $2 if (/(\w+)\s+(\d+)/);
}
close(FILE);

foreach my $key (sort keys %sum) {
    my $hour = int($sum{$key} / 60);
    my $min = $sum{$key} % 60;
    write;
format STDOUT =
@<<<<<<< @>>時間@>>分
$key,    $hour, $min
.
}