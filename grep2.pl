use strict;
use warnings;

my @lines = (
    "This is Perl.\n",
    "Isn't that a pearl?\n",
    "You must run perl.\n",
    "Perl is easy to learn.\n",
);
my $count = grep(/Perl/, @lines);
print $count;