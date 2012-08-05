use strict;
use warnings;

my @rhymes = (
    "Humpty Dumpty sat on a wall,",
    "Humpty Dumoty had a great fall;",
    "All the King's horses, and all the King's men",
    "Cannot put Humpty Dumpty together again.",
);

my %count;
foreach (@rhymes) {
    $count{lc($_)}++ foreach (/[\w']+/g);
}

print map { "$_ $count{$_}\n" } sort keys %count;