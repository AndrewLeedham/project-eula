# Largest prime factor
#   The prime factors of 13195 are 5, 7, 13 and 29.
#   What is the largest prime factor of the number 600851475143 ?

use v5.10.0;
use POSIX;

sub isPrime {
    $value = $_[0];
    for $i (2..ceil($value**0.5)) {
        if ($value % $i == 0) {
            return 0;
        }
    }
    return 1;
}

$target = 600851475143;

for ($i = ceil($target**0.5); $i > 0; $i--) {
    if ($target % $i == 0 && isPrime($i)) {
        say $i;
        last;
    }
}