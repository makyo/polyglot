import Darwin

var primeNumber = 0
var i = 3

func isPrime(n: Int) -> Bool {
    for i in Range(start: 2, end: Int(ceil(sqrt(Double(n)))) + 1) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

while primeNumber < 10001 {
    if (isPrime(i)) {
        primeNumber++
    }
    i++
}

print(i - 1)
