use strict;
use warnings;

my $str = 'Yahoo!JAPAN & Yahoo! (USA)';
$str =~ tr/A-Za-z0-9/ /c;
print "|$str|\n";
