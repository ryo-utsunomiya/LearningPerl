use strict;
use warnings;

open(FILE, 'file.txt') or die "$!";
while (<FILE>) {
	print $_;
}
close(FILE);
