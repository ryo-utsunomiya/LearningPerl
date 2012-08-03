use strict;
use warnings;

my @number = qw(0 1 2 3 4 5 6 7 8 9 A B C D E F);

foreach my $i (@number) {
    foreach my $j (@number) {
        print "$i$j ";
    }
    print "\n";
}