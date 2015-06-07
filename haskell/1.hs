multipleOf3Or5 :: Integer -> Bool
multipleOf3Or5 = (\n -> (||) (mod n 5 == 0) (mod n 3 == 0))

limit = pred 1000
multiples :: [Integer]
multiples = filter multipleOf3Or5 [1..limit]

sumMultiples :: Integer
sumMultiples = foldl (+) 0 multiples

main :: IO ()
main = do print sumMultiples
