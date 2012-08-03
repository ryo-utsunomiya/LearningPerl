use strict;
use warnings;

my @twig1 = qw(* ! * % / *);
my @twig2 = qw(* ! * % / * / * + - ! . * * % / * +);

my @twig = @twig1;
my @branch = ();
foreach my $leaf (@twig) {
	print ' ' x (@twig - @branch), @branch, $leaf, reverse(@branch), "\n";
	push(@branch, $leaf);
}

@twig = @twig2;
@branch = ();
foreach my $leaf (@twig) {
	print ' ' x (@twig - @branch), @branch, $leaf, reverse(@branch), "\n";
	push(@branch, $leaf);
}
