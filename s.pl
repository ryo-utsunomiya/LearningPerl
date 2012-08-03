use strict;
use warnings;

my $str = "This is a cat. That is a cat, too.\n";
$str =~ s/cat/dog/g;
print $str;
