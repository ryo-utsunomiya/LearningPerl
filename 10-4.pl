use strict;
use warnings;

print &factorial(-1), "\n";
for (my $n = 0; $n < 10; $n++) {
    print &factorial($n), "\n";
}
print &factorial(10.5), "\n";

sub factorial {
    my $n = int(shift);
    if ($n < 0) {
        0;
    } elsif ($n == 0) {
        1;
    } else {
        $n * &factorial($n - 1);
    }
}