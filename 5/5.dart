bool checkDivisible(n) {
    var divisible = true;
    // Anything divisible by 2 is also divisible by 20, so we can skip that.
    for (var i = 3; i <= 20; i++) {
        if (n % i != 0) {
            divisible = false;
            break;
        }
    }
    return divisible;
}

void main() {
    // 2520 is divisible for 1..10; so we can use that as a starting point.
    for (var i = 2520; i < 100000000000; i++) {
        if (checkDivisible(i)) {
            print(i);
            break;
        }
    }
}
