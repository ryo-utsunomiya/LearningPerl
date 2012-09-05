use strict;
use warnings;

print "Perl>";
while (my $line = <STDIN>) {
    print eval($line), "\n";
    print "Perl> ";
}