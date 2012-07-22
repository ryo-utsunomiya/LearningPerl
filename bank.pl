use strict;
use warnings;

print "暗証番号を入力してください。\n";
my $line = <STDIN>;
chomp($line);
if ($line eq "0314") {
	print "金庫が開きました。\n";
} else {
	print "暗証番号が違います。\n";
}
