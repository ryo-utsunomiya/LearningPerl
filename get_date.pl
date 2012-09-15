use strict;
use warnings;

my @date = &get_date;
print join(' ,', @date), "\n";

my $date = &get_date;
print $date, "\n";

sub get_date {
    unless (defined(wantarray)) {
        exit;
    } elsif (wantarray) {
        my @date = localtime();
        my @r = ($date[5] + 1900, $date[4] + 1, $date[3]);
        return @r;
    } else {
        my @date = localtime();
        my $r = ($date[5] + 1900) . '-' . ($date[4] + 1) . '-' . $date[3];
        return $r;
    }
}
