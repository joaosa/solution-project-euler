-- start with 1 and 2
fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

under4M :: [Integer] -> [Integer]
under4M = takeWhile (< 4000000)

desiredFib :: [Integer]
desiredFib = (filter even) . under4M $ fibs

main :: IO ()
main = do print (sum desiredFib)
