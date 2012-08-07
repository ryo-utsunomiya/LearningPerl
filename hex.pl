use strict;
use warnings;

my $data = '13 B8 56 0B BC 8F DB B5';
$data =~ s/([0-9A-F][0-9A-F]) */hex($1) . ','/eg;
print $data;
