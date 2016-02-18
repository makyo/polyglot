import Console exposing (putStrLn)

import Task

fib : Int -> Int -> Int -> Int -> Int
fib a b max sum =
    let
        next = a + b
        sumAll = sum + next
    in
        if next > max then
            sum
        else
            if next % 2 == 0 then
                fib b next max sumAll
            else
                fib b next max sum

run =
    fib 1 1 4000000 0
        |> toString
        |> putStrLn

port runner : Signal (Task.Task x ())
port runner = Console.run run
