use strict;
use warnings;

my @data = &get_date;
print join(' ,', @date), "\n";

my $date = &get_date;
print $date, "\n";

sub get_date {
    localtime();
}