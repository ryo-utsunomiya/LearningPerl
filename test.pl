use strict;
use warnings;

my @array = qw('a' 'b' 'c' 'd' 'e' 'f');
my @xyz = qw('X' 'Y' 'Z');
my @removed = splice(@array);
print "\@array = @array\n";
print "\@removed = @removed\n";
