use strict;
use warnings;

my @data = qw(How I wonder what you are.);

print join(', ', &get_length_list(@data)), "\n";

sub get_length_list {
    map { length($_) } @_;
}