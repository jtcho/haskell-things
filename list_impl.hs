-- list_imp.hs
-- Custom implementation of a List type, a recursive data type.
-- author: @jt

-- Define a custom infix operator ::: with fixity 5.
infixr 5 :::

-- Implicitly defines a Nil type for free!
-- Defines our own custom List type.
data JList a = Nil | a ::: (JList a) deriving (Show, Read, Eq, Ord)

infixr 5 +++
(+++) :: JList a -> JList a -> JList a 
Nil +++ ys = ys
-- In the definition of the JList data type, we specify :::
-- to be a constructor for a JList, thereby enabling some
-- clever pattern-matching. :D
(x ::: xs) +++ ys = x ::: (xs +++ ys)

-- Example time.
a = 3 ::: 4 ::: 5 ::: Nil
b = 6 ::: 7 ::: Nil

-- Inside `stack ghci list_impl.hs`, run a +++ b. :)
