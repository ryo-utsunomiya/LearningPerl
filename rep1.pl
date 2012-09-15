use strict;
use warnings;

open(FILE, 'file.thml') or die "$!";
open(NEWFILE, '> new.html') or die "$!";
while (my $line = <FILE>) {
    $line =~ s/hyuki\@st\.rim\.or\.jp/hyuki\@hyuki\.com/g;
    print NEWFILE $line;
}
close(NEWFILE);
close(FILE);