-- start with 1 and 2
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib 2 = 2
fib n = fib (n-1) + fib (n-2)

fibs :: [Integer]
fibs = map fib [1..]

evenFibUnder4M :: [Integer]
evenFibUnder4M = filter (\n -> (n < 4000000) && (even n)) fibs

main :: IO ()
main = do print (sum evenFibUnder4M)
