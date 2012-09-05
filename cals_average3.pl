use strict;
use warnings;

my $debug = 0;

sub calc_average3 {
    my ($x, $y, $z) = @_;
    my $ave;
    $ave = ($x + $y + $z) / 3;
    if ($debug) {
        print "&calc_average3: \$x = $x, \$y + $y, \$z = $z, \$ave = $ave\n";
    }
    return $ave;
}
print &calc_average3(50, 100, 60);