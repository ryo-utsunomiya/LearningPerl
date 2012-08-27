use strict;
use warnings;

open (FILE, "genome.txt") or die "$!";
my @file = <FILE>;
close(FILE);
chomp(@file);
my $file = join('', @file);
while ($file =~ /(.)(.)(.)(.)\4\3\2\1/) {
    print "$&\n";
}