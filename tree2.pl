use strict;
use warnings;

my @twig1 = qw(* ! * % / *);
my @twig2 = qw(* ! * % / * + - ! . * * % / * +);
&print_tree(@twig1);
&print_tree(@twig2);
exit;

sub print_tree {
    my (@twig) = @_;
    my (@branch);
    foreach my $leaf (@twig) {
        print ' ' x (@twig - @branch), @branch, $leaf, reverse(@branch), "\n";
        push(@branch, $leaf);
    }
}