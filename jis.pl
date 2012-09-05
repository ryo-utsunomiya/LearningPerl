use strict;
use warnings;

require 'jcode.pl';

if (@ARGV == 0) {
    print "Usage: jis.pl file1 file2 …\n";
    exit(0);
}

foreach my $filename (@ARGV) {
    open(FILE, $filename) or die "$filename: $!";
    my $lines = join('', <FILE>);
    close(FILE);
    &jcode::convert(\$lines, 'jis');
    open(FILE, "> $filename") or die "$filename: $!";
    print FILE $lines;
    close(FILE);
}