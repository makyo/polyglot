'use strict';

function bigNumMultiply(bignum, int) {
  var remainder = 0;
  bignum.forEach(function (val, index) {
    remainder = int * val + remainder;
    bignum[index] = remainder % 10;
    remainder = Math.floor(remainder / 10);
  });
  if (remainder > 0) {
    bignum.push(remainder);
  }
  return bignum;
}

function bigNumPow(base, exp) {
  var result = [1];
  for (var i = 0; i < exp; i++) {
    result = bigNumMultiply(result, base);
  }
  return result;
}

var accumulator = 0;
bigNumPow(2, 1000).forEach(function(value) { accumulator += value; });

console.log(accumulator);
