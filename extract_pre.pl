use strict;
use warnings;

my $html1 = "<pre>Sunday</pre>";

my $data1 = &extract_pre($html1);

print "\$data1 = \"$data1\"\n";

sub extract_pre {
    $html1 =~ /^<pre>(.)<\/pre>$/;
    return $1;
}