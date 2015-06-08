-- start with 1 and 2
fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

fibUnder4M :: [Integer]
fibUnder4M = takeWhile (< 4000000) fibs

evenFib :: [Integer]
evenFib = filter even fibUnder4M

main :: IO ()
main = do print (sum evenFib)
