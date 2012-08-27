use strict;
use warnings;

my $html1 = "<pre>Sunday</pre>";
my $html2 = "<pre>Sunday\nMonday</pre>";
my $html3 = "<pre>Sunday\nMonday</pre>and<pre>Tuesday\nWednesday</pre>";

my $data1 = &extract_pre($html1);
my $data2 = &extract_pre($html2);
my $data3 = &extract_pre($html3);

print "\$data1 = \"$data1\"\n";
print "\$data2 = \"$data2\"\n";
print "\$data3 = \"$data3\"\n";

sub extract_pre {
    my ($html) = @_;
    my @data = ($html =~ m|<pre>(.*?)</pre>|gis);
    my $line = join(',', @data);
    $line =~ s/\n/,/gs;
    return $line;
}