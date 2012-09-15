use strict;
use warnings;

if (@ARGV == 0) {
    print "Usage: perl showit.pl file-or-dir …\n";
    exit(-1);
}
foreach my $name (@ARGV) {
    unless (-e $name) {
        die "'$name' does not exist.\n";
    } elsif (-f $name) {
        open(FILE, $name) or die "$name: $!";
        foreach my $line (<FILE>) {
            print $line;
        }
        close(FILE);
    } elsif (-d $name) {
        opendir(DIR, $name) or die "$name: $!";
        foreach my $entry (readdir(DIR)) {
            print "$entry\n";
        }
        closedir(DIR);
    } else {
        die "I cannot show '$name' to you.\n";
    }
}