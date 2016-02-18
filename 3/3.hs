factors :: Int -> [Int]
factors n =
    filter (\ x -> n `mod` x == 0) [2, 3 .. ceiling (sqrt (fromIntegral n))]

isPrime :: Int -> Bool
isPrime n =
    factors n == []

largestPrimeFactor :: Int -> Int
largestPrimeFactor n =
    last $ filter isPrime (factors n)

main =
    putStrLn $ show $ largestPrimeFactor 600851475143
