use warnings;

$x = 123;
print "$x\n";
{
    print "$x\n";
    $x = 456;
    print "$x\n";
}
print "$x\n";
