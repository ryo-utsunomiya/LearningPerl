use strict;
use warnings;

my @data = (
    "Hiroshi Yuki,70,83,41",
    "Hanako Sato,100,93,69",
    "Tomura,46,33,99",
);
foreach my $line (@data) {
    my ($name, @score) = split(/,/, $line);
    my $sum = 0;
    foreach my $item (@score) {
        $sum += $item;
    }
    print "$name = $sum\n";
}