#use strict;
use warnings;

$x = 123;
print "$x\n";
{
    print "$x\n";
    my $x = 456;
    &print_x;
    print "$x\n";
}
print "$x\n";
&print_x;
print "$x\n";

sub print_x {
    print "&print_x: $x\n";
    $x .= 'x';
    print "&print_x: $x\n";
}
