use strict;
use warnings;
use Text::ParseWords;

my $str = 'Hiroshi Yuki,, 168,58,37,"YUKI, Hiroshi",",",202';
my @csv = &quotewords(',', 0, $str);
print "|", join('|', @csv), "|\n";