use strict;
use warnings;

splice(@array, @array, 0, $item);

$item = splice(@array, $#array);
$item = splice(@array, -1);

$item = (@array, 0, 1);

splice(@array, 0, 0, $item);

splice(@array, $index, 1, $item);
