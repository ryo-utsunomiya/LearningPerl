use strict;
use warnings;

my %hash = (
    '結城浩' => 36,
    '佐藤花子' => 22,
    'とむら' => 21,
    '高橋マモル' => 22,
    );
my @keys = keys(%hash);
my @values = values(%hash);
print join(',', @keys), "\n";
print join(',', @values), "\n";
