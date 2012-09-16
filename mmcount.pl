use strict;
use warnings;

my $infile = 'mmlog.txt';
my $outfile = 'mmout.txt';
open(INFILE, $infile) or die "$infile: $!";

my $firstline = 1;
my ($lastvol, $lastcount);
foreach my $line (<INFILE>) {
    my ($vol, $count) = split(/\s+/, $line);
    unless ($firstline) {
        my $up = $lastcount - $count;
        print OUTFILE "$vol -> $lastvol: $up\n";
    }
    ($lastvol, $lastcount) = ($vol, $count);
    $firstline = 0;
}
close(OUTFILE);
close(INFILE);