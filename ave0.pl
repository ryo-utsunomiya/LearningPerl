use strict;
use warnings;

sub calc_average {
    my (@numbers) = @_;
    my $sum = 0;
    my $ave;
    if (@numbers == 0) {
        warn "&calc_average: no argument is given.\n";
        return 0;
    }
    foreach my $n (@numbers) {
        $sum += $n;
    }
    $ave = $sum / @numbers;
    return $ave;
}

print &calc_average(), "\n";