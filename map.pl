use strict;
use warnings;

my @user = qw(hyuki tomura hanako mamoru);
my @mail = map { $_ . '@hyuki.com' } @user;
print join("\n", @mail);
