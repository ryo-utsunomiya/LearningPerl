use strict;
use warnings;

my $filename = 'file.txt';
open(FILE, $filename) or die "$filename: $!";
while (my $line = <FILE>) {
    $line =~ s/ /_/g;
    print $line;
}
close(FILE);