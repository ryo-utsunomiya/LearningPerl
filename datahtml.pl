use strict;
use warnings;

open(FILE, 'data.txt') or die "$!\n";
my @file = <FILE>;
close(FILE);

print qq|<html><h1>点数表</h1><table border="1">|;

foreach my $line (sort @file) {
    chomp($line);
    my ($name, @score) = split(/,/, $line);
    my $sum = 0;
    foreach my $score (@score) {
        $sum += $score;
    }
    print qq|<tr><td>$name</td><td align="right">|, join(qq|</td><td align="right">|, @score, $sum);
    print "</td></tr>";
}
print "</table></html>";