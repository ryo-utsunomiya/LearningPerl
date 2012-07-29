use strict;
use warnings;

my %sum;
open(FILE, 'log.txt') or die "$!";
while (my $line = <FILE>) {
    my ($work, $time) = split(/ /, $line);
    if (defined($time)) {
        $sum{$work} += $time;
    }
}
close(FILE);

foreach my $key (sort keys %sum) {
    my $hour = int($sum{$key} / 60);
    my $min = $sum{$key} % 60;
    printf("%-8s %3d時間 %3d分\n", $key, $hour, $min);
}