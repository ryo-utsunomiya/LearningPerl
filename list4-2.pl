use strict;
use warnings;

my @info = (
    'hyuki@hyuki.com:Hiroshi Yuki:37',
    'hanako@hyuki.com:Hanako Sato:23',
    'tomura@hyuki.com:Tomura:22',
    );
print "<html><table border=\"1\">\n";

foreach my $item (@info) {
    my ($mail, $name, $age) = split(/:/, $item);
    print "<tr><td>";
    print join("</td<td>", $mail, $name, $age);
    print "</td></tr>\n";
}

print "</table></html>\n";