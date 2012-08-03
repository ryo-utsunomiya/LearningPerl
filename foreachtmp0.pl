use strict;
use warnings;

opendir(DIR, "/tmp") or die;
foreach my $item (sort(readdir(DIR))) {
    next if ($item eq ".");
    next if ($item eq "..");
    print "$item\n";
}
closedir(DIR);