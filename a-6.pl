use strict;
use warnings;

my $myname = 'Hiroshi Yuki';
my $mymsg = 'Hello, how are you?';
my $mytime = '2000-03-20';

&debug_print($myname, $mymsg, $mytime);

$myname = &encode($myname);
$mymsg = &encode($mymsg);
$mytime = &encode($mytime);
my $data = join(',', $myname, $mymsg, $mytime);

print "¥$data = $data¥n";

($myname, $mymsg, $mytime) = split(/,/, $data);
$myname = &decode($myname);
$mymsg = &decode($mymsg);
$mytime = &decode($mytime);

&debug_print($myname, $mymsg, $mytime);

exit(0);

sub encode  {
	my $str = shift;
	$str =~ s/,/&#44;/g;
	return $str
}

sub decode {
	my $str = shift;
	$str =~ s/&#44;/,/g;
	return $str;
}

sub debug_print {
	my ($mytime, $mymsg, $myname) = @_;
	print "\$myname = $myname\n";
	print "\$mymsg = $mymsg\n";
	print "\$mytime = $mytime\n";
}