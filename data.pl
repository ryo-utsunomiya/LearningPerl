use strict;
use warnings;

foreach my $data (<DATA>) {
    $data =~ s/\w+/ucfirst($&)/ge;
    print $data;
}
__DATA__
Twinkle, twinkle, little star,
How I wonder what you are.
Up above the world so shigh,
Like a diamond in the sky.
Twinkle, twinkle, little star,
How I wonder what you are.