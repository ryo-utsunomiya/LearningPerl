use strict;
use warnings;

my $s = "way to do it.\n'There one s more than";
$s =~ s/(.*)'(.*) one (.*)/$2'$3 one $1/s;
print $s;

$_ = "gURER'F ZBER GUNA BAR JNL GB QB VG.\n";
tr[a-mn-zA-MN-Z][N-ZA-Mn-za-m];
print;