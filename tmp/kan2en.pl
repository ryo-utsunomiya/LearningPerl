use strict;
use warnings;

my @reversed = reverse sort { $a <=> $b } @array;
my @reversed = sort { $b <=> $a } @array;
