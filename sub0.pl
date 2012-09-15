@numlist = (1..10);
print "\@numlist = @numlist\n";
print "1 + 3 + 5 =", &calc_sum(1,3,5), "\n";
print "\@numlist = @numlist\n";
exit;

sub calc_sum {
    @numlist = @_;
    $sum = 0;
    foreach (@numlist) {
        $sum += $_;
    }
    return $sum;
}