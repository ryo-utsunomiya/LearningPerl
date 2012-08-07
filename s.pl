use strict;
use warnings;

my $str = "abc123\ndef456123xdef";
if ($str =~ /123\ndef/) {
	print "$&\n";
}
