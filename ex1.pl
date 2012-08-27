use strict;
use warnings;

my $i = 1;

while ($i <=31) {
    if ($i < 10) {
        print '0' . $i, "\n";
    } else {
        print $i, "\n";
    }
    $i++;
}