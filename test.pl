use strict;
use warnings;

my $line = '12:34, 56 and 78, 90';
my @num = ($line =~ /\d+/g);
print join(', ', @num);
