use strict;
use warnings;

open(FILE, 'data.txt') or die "$!\n";
my @file = <FILE>;
close(FILE);

my %line_to_sum;
my %line_to_name;
foreach my $line (@file) {
    my ($yomi, $name, @score) = split(/,/, $line);
    my $sum = 0;
    foreach my $score (@score) {
        $sum += $score;
    }
    $line_to_sum{$line} = $sum;
    $line_to_name{$line} = $name;
}

foreach my $line (sorc { $line_to_sum{$b} <=> $line_to_sum{$a} } @file) {
    print $line_to_name{$line}, "\t", sprintf("%3d", $line_to_sum{$line}), "\n";
}