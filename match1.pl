use strict;
use warnings;

while (my $str = <STDIN>) {
    chomp($str);
    last if ($str eq 'end');
    if ($str =~ /ca.s/) {
        print "$& --- Match!\n";
    } else {
        print "No match.\n";
    }
}