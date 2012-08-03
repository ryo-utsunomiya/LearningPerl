use strict;
use warnings;

opendir(DIR, '/tmp') or die "$!";
foreach my $entry (readdir(DIR)) {
    next if ($entry eq "." or $entry eq "..");
    print "$entry\n";
}
closedir(DIR);