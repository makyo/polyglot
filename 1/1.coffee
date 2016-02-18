num = 0
((num += i if i % 5 == 0 or i % 3 == 0) for i in [1..999])
console.log num
