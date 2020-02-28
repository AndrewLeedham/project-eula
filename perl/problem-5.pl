# Smallest multiple
#   2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#   What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

use v5.10.0;

$upto = 20;
$number = $upto;
while (1) {
    $number += $upto;
    $found = 0;
    for $i (2..$upto) {
        if ($number % $i != 0) {
            last;
        }
        if($i == $upto) {
            say "smallest number divisible by 1..$upto is $number";
            $found = 1;
        }
    }
    if ($found) {
        last;
    }
}
