use strict;
use warnings;

my %dict = (
    'twinkle' => 'きらきら',
);

while (<STDIN>) {
    while (/(\W*)(\w*)/g) {
        my ($other, $word) = ($1, $2);
        print $other;
        if (exists($dict{lc($word)})) {
            print $dict{lc($word)};
        } else {
            print $word;
        }
    }
}