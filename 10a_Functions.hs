absolute :: (Ord a, Num a) => a -> a
absolute x = if x >= 0 then x else -x

absolute' :: (Ord a, Num a) => a -> a
absolute' x
    | x >= 0 = x
    | otherwise = -x

main = putStrLn (show (absolute (-5)))
