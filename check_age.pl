use strict;
use warnings;

sub check_age {
    $_[0] < 20 ? 'not ok' : 'ok';
}