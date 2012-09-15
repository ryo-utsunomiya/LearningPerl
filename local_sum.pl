sub calc_sum {
    @numlist = @_;
    $sum = 0;
    foreach (@numlist) {
        $sum += $_;
    }
    return $sum;
}

@numlist = (2,3,4,5);
@list = (1, 2, 3);
print &calc_sum(@list);