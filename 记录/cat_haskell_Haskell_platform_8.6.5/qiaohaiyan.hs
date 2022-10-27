area r = pi * r^2

implies = \x -> \y -> not y || x

fxxk = "223"

doubleMe x = x + x

duoblefxxknumber x = if x > 888
                    then x
                    else x + x

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

countwords = length . words
-- length    .    words    "Hello    world!" --

-- Data constructor, e.g. --
data WithString a = MakeWithString a String
-- :t MakeWithString --
-- MakeWithString :: a -> String -> WithString a --

charles = MakeWithString 135 "bananas"
-- :t charles --
-- charles :: WithString Int --

extractString (MakeWithString x y) = y
-- e.g. extractString charles --

data Terminal = UniqueValue
-- Just any set with one element is a terminal object in the category Set, this type behaves like a terminal object in Haskell: for every other type, there is only one way to deﬁne a (total) function to Terminal. --

data Pair a b = MkPair a b

p = MkPair 5 True

proj1 (MkPair a b) = a

proj2 (MkPair a b) = b

fxxxxx (x, y) = x
-- The keyword type allows creation of type synonyms, e.g. type AnimalName = String --

newtype Rank = R Int
newtype Suit = Y Int
type Card = (Rank, Suit)

{-
This isomorphism is very useful to us as programmers: it says we may construct a
 function into a pair just by solving the simpler problems of constructing functions into
  the factors! It’s helpful to explicitly have available the isomorphism between the two
   types. In one direction, we have the function tuple.
-}
tuple (f, g) = \c -> (f c, g c)

-- We may also implement the function tuple using pattern matching as follows: --
-- tuple (f, g) c = (f c, g c) --
-- In the other direction, we can deﬁne  the  function untuple.--
untuple h = (\c -> fxxxxx (h c), \c -> snd (h c))

-- For   example,   instead   of   deﬁning   the   Pair   datatype   and   then   deﬁning   functions proj1  and proj2  as  above,  we  can use the more concise  syntax: --
-- data    Pair    a    b    =    MkPair    {    proj1    ::    a,    proj2    ::    b    } --


mymax [x] = x
mymax (x:xs) = max x (mymax xs)

qsort [] = []
qsort (x:xs) = less' ++ [x] ++ more'
       where
       less = [y | y <- xs, y < x]
       more = [y | y <- xs, y >= x]
       less' = qsort less
       more' = qsort more

exponential x 0 = 1
exponential x 1 = x
exponential x 2 = x * x
exponential x n 
            | mod n 2 == 0 = exponential y 2
            | mod n 2 == 1 = x * exponential y 2
            where
            y = exponential x m
            m = div n 2

neg False = True
neg True = False

first (x, y) = x

isEmpty [] = True
isEmpty (x:xs) = False

duplicate 0 x = []
duplicate n x = x : duplicate (n-1) x

-- xs = [1,2,3] --
-- [2*x | x <-xs] --
-- [2,4,6] --

data Season = Spring | Summer | Autumn | Winter 

instance Show Season where
  show Spring = "Spring"
  show Summer = show 0
  show Autumn = "Fall"
  show Winter = "Winter"

instance Eq Season where
    Spring == Spring = True
    _      == _      = False

next Spring = Summer
next Summer = Autumn

hot Winter = False
hot _ = True

data Ball = MakeBall Float deriving (Show, Eq)

-- :t MakeBall 3.5 --
-- MakeBall 3.5 :: Ball --

volume (MakeBall r) = (4/3) * pi * r^3

-- volume (MakeBall 3.5) --
-- 179.59439 --

data Shape = Circle Float | Rectangle Float Float
                               deriving (Show,Eq)

area_2 (Circle r) = pi * r^2
area_2 (Rectangle a b) = a * b

data Nat = Zero | Succ Nat deriving Eq

natshow Zero = 0
natshow (Succ n) = natshow n + 1

instance Show Nat where 
  show n = show (natshow n)

addddd Zero n = n
addddd (Succ m) n = Succ (addddd m n)

-- addddd Zero Zero --
-- 0 --

-- problem solving, example: path planning(Learn You a Haskell for Great Good!, Ch.10) --

-- data Node = Node Road Road | EndNode Road --
-- data Road = Road Int Node --

data Node = Node Road (Maybe Road)  
data Road = Road Int Node

read2lines = 
  do  l1 <- getLine
      l2 <- getLine
      putStrLn $ "The first line: " ++ l1
      putStrLn $ "The Second line: " ++ l2

getInt = do
   n <- getLine
   return (read n :: Int)

showSum = do
   x <- getInt
   y <- getInt
   putStr $ "The first number:"
   print x
   putStr $ "The second第二 number:"
   print y
   putStr $ "The sum:"
   print (x + y)


  
