use strict;
use warnings;
use Text::ParseWords;
use encoding 'Shift_JIS';

my $str = '�\�v�Z,�\,�\�t�g�E�F�A';
my @csv = &quotewords(',', 0, $str);
print "|", join('|', @csv), "|�_n";