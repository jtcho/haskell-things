-- 
-- Input: List of integers, A[1...n]
-- Output: Sum of even numbers in list
--

-- sum_even_l :: Integral p => p -> p -> p
-- sum_even_l acc y
--     | mod y 2 == 0 = acc+y
--     | otherwise = acc
-- 
-- sum_even :: Integral a => [a] -> a
-- sum_even x = foldl (sum_even_l) 0 x

-- sum_even' x = foldl (+) 0 (filter even x)

sum' :: Num a => [a] -> a
sum' = foldl (+) 0

evenSum :: Integral a => [a] -> a
evenSum = sum' . (filter even)

main = putStrLn (show (evenSum [1, 2, 3, 4]))
