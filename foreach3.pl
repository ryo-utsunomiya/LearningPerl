use strict;
use warnings;

open(FILE, 'file.txt') or die "$!";
foreach my $line (<FILE>) {
	chomp ($line);
	print $line;
}
close(FILE);
