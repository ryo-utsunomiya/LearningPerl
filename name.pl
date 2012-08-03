use strict;
use warnings;

my @name = qw(hyuki hanako tomura mamoru);
print reverse(sort(@name)), "\n";
print sort(reverse(@name)), "\n";
