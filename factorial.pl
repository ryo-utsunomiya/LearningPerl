use strict;
use warnings;

print &factorial(-1), "\n";
for (my $n = 0; $n < 10; $n++) {
    print &factorial($n), "\n";
}
print &factorial(10.5), "\n";

sub factorial {
    my ($number) = @_;
    $number = int($number);
    if ($number < 0) {
        return 0;
    } elsif ($number == 0) {
        return 1;
    }
    my $r = 1;
    for (my $i = 1; $i <= $number; $i++) {
        $r *= $i;
    }
    return $r;
}