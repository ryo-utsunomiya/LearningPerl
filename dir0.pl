use strict;
use warnings;

my $dirname = '.';
opendir(DIR, $dirname) or die "$dirname: $!";
while (my $dir = readdir(DIR)) {
    print $dir, "\n";
}
closedir(DIR);