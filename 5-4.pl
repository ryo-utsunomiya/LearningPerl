use strict;
use warnings;

if (@ARGV == 0) {
    print "Usage:…";
    exit(-1);
}

my %hash = (
        'red' => 0,
        'purple' => 0,
        'green' => 0,
        'white' => 0,
        'yellow' => 0,
        );

foreach my $file (@ARGV) {
    open (FILE, $file) or die "$!";

    while (my $line = <FILE>) {
        chomp($line);
        my ($color, $time) = split(/ /, $line);
        $hash{'$color'} += $time, if ($time); 
    }
}

foreach my $time (keys %hash) {
    print "$time : $hash{$time}";
    }