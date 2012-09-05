use strict;
use warnings;

sub calc_average {
    my (@numbers) = @_;
    my $sum = 0;
    my $ave;
    foreach my $n (@numbers) {
        $sum += $n;
    }
    $ave = $sum / @numbers;
    return $ave;
}

print &calc_average(50, 100);
print &calc_average(50, 100, 60);
print &calc_average(10, 20, 40, 05, 60, 70, 05);