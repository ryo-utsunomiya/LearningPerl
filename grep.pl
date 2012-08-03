use strict;
use warnings;

my @word = qw(Sun Mon Tue Wed Thu Fri Sat);
my @found = grep(/^S/, @word);
print "@found\n";
