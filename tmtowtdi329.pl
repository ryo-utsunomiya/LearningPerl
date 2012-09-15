use strict;
use warnings;

&print_tmtowtd('it');
&print_tmtowtd('your work');

sub print_tmtowtd {
    my $what = shift;
    print "There's more than one way to do $what.\n";
}