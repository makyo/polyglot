struct Triangle {
    num: i64,
    sum: i64,
}

impl Iterator for Triangle {
    type Item = i64;
    fn next(&mut self) -> Option<i64> {
        self.num = self.num + 1;
        self.sum = self.sum + self.num;

        Some(self.sum)
    }
}

fn triangle() -> Triangle {
    Triangle { num: 1, sum: 1}
}

fn count_factors(num: i64) -> i64 {
    let mut factors = 0;
    for n in 1..((num as f64).sqrt() as i64 + 1){
        if num % n == 0 {
            factors += 2;
        }
    }
    factors
}

fn main() {
    let max_factors = 500;

    for num in triangle() {
        if count_factors(num) > max_factors {
            println!("{}\n", num);
            break;
        }
    }
}
