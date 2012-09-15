use strict;
use warnings;

open(FILE, 'data.txt') or die "$!";
foreach my $line (<FILE>) {
    print $line;
}
close(FILE);