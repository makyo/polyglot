factors :: Int -> [Int]
factors n =
    filter (\ x -> n `mod` x == 0) [2, 3 .. ceiling (sqrt (fromIntegral n))]

isPrime :: Int -> Bool
isPrime n =
    factors n == []

-- Naive
largestPrimeFactor :: Int -> Int
largestPrimeFactor n =
    last $ filter isPrime (factors n)

-- More efficient
-- This relies on the fact that take and filter will only generate whats needed
-- and then short circuit out.
largestPrimeFactor' :: Int -> Int
largestPrimeFactor' n =
    (take 1
        (filter
            (\ x -> (n `mod` x == 0) && (isPrime x))
            [ceiling (sqrt (fromIntegral n)),
             ceiling (sqrt (fromIntegral n)) - 1 .. 3])) !! 0
main =
    putStrLn $ show $ largestPrimeFactor' 600851475143
