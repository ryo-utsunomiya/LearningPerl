use strict;
use warnings;

open(FILE, '> hello.txt');
print FILE "Hello, Perl!\n";
close(FILE);