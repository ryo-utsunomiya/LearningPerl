use strict;
use warnings;

open(FILE, 'file.txt') or die "$!";
foreach my $line (<FILE>) {
	print $line;
}
close(FILE);
