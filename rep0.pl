use strict;
use warnings;

open(FILE, 'file.html') or die "$!";
while (my $line = <FILE>) {
    $line =~ s/hyuki\@st\.rim\.or\.jp/hyuki\@hyuki\.com/g;
    print $line;
}
close(FILE);