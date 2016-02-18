factors :: Int -> [Int]
factors n =
    filter (\ x -> n `mod` x == 0) [2..ceiling (sqrt (fromIntegral n))]

isPrime :: Int -> Bool
isPrime n =
    length (factors(n)) == 0

largestPrimeFactor :: Int -> Int
largestPrimeFactor n =
    -- What I want to do:
    -- for i in reverse factors n:
    --     if isPrime i:
    --         return i
    last $ filter isPrime (factors n)

main =
    putStrLn $ show $ largestPrimeFactor 600851475143
