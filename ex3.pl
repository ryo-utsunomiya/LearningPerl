use strict;
use warnings;

my %name_to_age = (
'結城浩' => 36,
'佐藤花子' => 22,
'とむら' => 21,
);

my %age_to_name;
foreach my $name (keys %name_to_age) {
	$age_to_name{$name_to_age{$name}} = $name;
}

foreach my $age (keys %age_to_name) {
	print "$age → $age_to_name{$age}\n";
}
