package main

import "fmt"
import "math"

func reverse(n int) int {
	reversed := 0
	power := int(math.Log(float64(n)))/2 - 1
	for {
		reversed += n % 10 * int(math.Pow(10, float64(power)))
		power--
		n = int(math.Floor(float64(n) / 10))
		if n < 1 {
			break
		}
	}
	return reversed
}

func isPalindrome(n int) bool {
	return n == reverse(n)
}

func main() {
	found := 0
	for a := 999; a > 100; a-- {
		for b := 999; b > 100; b-- {
			if isPalindrome(a*b) && a*b > found {
				found = a * b
			}
		}
	}
	fmt.Println(found)
}
