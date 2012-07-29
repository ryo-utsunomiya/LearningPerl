use strict;
use warnings;

my @word = qw(There's more than one way to do it.);

my $str1 = '';
foreach my $word (@word) {
	$str1 .= "$word ";
}

my $str2 = join(' ', @word);

print "\$str1 = |$str1|\n";
print "\$str2 = |$str2|\n";

if ($str1 eq $str2) {
	print "Same.\n";
} else {
	print "Not same.\n";
}
