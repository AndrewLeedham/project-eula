# Largest palindrome product
#   A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#   Find the largest palindrome made from the product of two 3-digit numbers.

use v5.10.0;
use POSIX;

sub isPalindromic {
    $value = $_[0];
    $length = length($value);
    $half = floor(length($value) / 2);
    $start = substr($value, 0, $half);
    $end = substr($value, $length - $half, $half);
    $reversed = reverse($end);
    if ($start == $reversed) {
        return 1;
    }
    return 0;
}

$largest = 0;
$largestA = 0;
$largestB = 0;
for ($a = 999; $a > 100; $a--) {
    for ($b = 999; $b > 100; $b--) {
        last if ($b == $largestB);
        $product = $a * $b;
        if (isPalindromic($product) && $product > $largest) {
            $largestA = $a;
            $largestB = $b;
            $largest = $product;
        }
    }
}
say "$largestA × $largestB = $largest is palindromic.";
