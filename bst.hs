-- bst.hs
-- Implements a binary search tree in Haskell.
-- Includes my first attempt without any reference code. :)

-- TODOs: 
-- Self-balancing? :)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

-- Utility function to generate a single leaf node.
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

-- Utiity function to insert a new item into the BST.
treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
    | x == a =  Node x left right
    | x < a  =  Node a (treeInsert x left) right
    | x > a  =  Node a left (treeInsert x right)

-- For example usage, try:
-- x = treeInsert 6 $ treeInsert 7 $ treeInsert 3 $ singleton 5
-- or more concisely,
-- seedTree [6, 7, 3, 5]

-- Utility function to generate a BST from a list of ordinal values.
seedTree :: (Ord a) => [a] -> Tree a
seedTree values = foldr treeInsert EmptyTree values

-- Utility function to determine whether BST contains a particular value.
contains :: (Ord a) => Tree a -> a -> Bool
contains EmptyTree a = False
contains (Node a left right) x
    | x == a =  True
    | x < a  =  contains left x
    | x > a  =  contains right x

example = seedTree [6, 7, 3, 5]

main = putStrLn (show example)
