use strict;
use warnings;

my @text = (
    "There's more than one way to do it.",
    "Write once, run anywhere.",
    "Programming Lesson",
);
foreach my $str (@text) {
    print '+', '-' x length($str), '+', "\n";
    print '|', $str, '|', "\n";
    print '+', '-' x length($str), '+', "\n";
    }