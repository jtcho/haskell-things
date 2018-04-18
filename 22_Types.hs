-- data Complex a = Num a => Complex { real :: a, img :: a }
data Complex a = Complex { real :: a, img :: a}
c = Complex 1.0 2.0
-- z = Complex { real = 3, img = 4}
main = putStrLn $ show (real c)
