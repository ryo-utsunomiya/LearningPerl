use strict;
use warnings;

shile (<*.txt>) {
    my $days = -M $_;
    if ($days <= 1) {
        print '(day)';
    } elsif ($days <= 7) {
        print '(week)';
    } else {
        print '(old)';
    }
    print "\t", $_, "\n";
}