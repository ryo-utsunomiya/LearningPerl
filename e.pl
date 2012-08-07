use strict;
use warnings;

my $str = "How I wonder what you are.\n";
$str =~ s/\w+/ucfirst($&)/g;
print $str;
