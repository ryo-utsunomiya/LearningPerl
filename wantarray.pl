use strict;
use warnings;

&check_context;
my @array = &check_context;
my $scalar = &check_context;

sub check_context (
    unless (defined(wantarray)) {
        print '無効コンテキスト', "\n";
    } elsif (wantarray) {
        print 'リストコンテキスト', "\n";
    } else {
        print 'スカラーコンテキスト', "\n";
    }
}