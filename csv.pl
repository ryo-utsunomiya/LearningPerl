use strict;
use warnings;

my $str = 'Hiroshi Yuki,, 168,58,37,"YUKI, Hiroshi",",",202';
my @csv = ();
while ($str =~
            /
                (
                    "([^"]*)"
                    |
                    ([^,]*)
                )
                ,?
            /xg) {
    my $item = $+;
    push(@csv, $item);
}
pop(@csv) unless ($str =~ /,$/);
print "|",join('|', @csv), "|\n";