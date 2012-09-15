use strict;
use warnings;

open(FILE, 'file.html') or die "$!";
my @file = <FILE>;
close(FILE);
foreach my $line (@file) {
    $line =~ s/hyuki\@st\.rim\.or\.jp/hyuki\@hyuki\.com/g;
}
open(NEWFILE, '> file.html') or die "$!";
print NEWFILE @file;
close(NEWFILE);