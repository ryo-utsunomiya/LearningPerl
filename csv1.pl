use strict;
use warnings;
use Text::ParseWords;
use encoding 'Shift_JIS';

my $str = '表計算,表,ソフトウェア';
my @csv = &quotewords(',', 0, $str);
print "|", join('|', @csv), "|＼n";