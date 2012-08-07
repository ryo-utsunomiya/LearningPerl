use strict;
use warnings;

my $str = "Loves plum cake (and) sugar candy and so on.\n";
$str =~ s/\band\b/AND/g;
print $str;
