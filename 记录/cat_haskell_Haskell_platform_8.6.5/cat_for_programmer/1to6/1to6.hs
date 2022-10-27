
daasss = 5:[x + 5 | (x, y) <- zip daasss (daasss)]

fibs = 1:1:[x + y | (x,y) <- zip fibs (tail fibs)]

fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

sieve (x:xs) = x : sieve [y | y <- xs, y `mod` x >0]

primes = sieve [2..]

--e.g. primes !! 23 获取第23个素数 -- 

fact n = product [1..n] 

f44 () = 44

--In fact you could think of as a different representation for the number 44. --

-- Functions from unit to any type 𝐴 are in one-to-one correspondence with the elements of that set 𝐴.--

fint x = ()

-- Mathematically, a function from a set 𝐴 to a singleton set maps every element of 𝐴 to the single element of that singleton set. For every 𝐴 there is exactly one such function. --

data HJ = JK | OP

class Mon m where 
    mempty :: m
    mappend :: m -> m -> m

type Bw a = (a, Bool)

m1 >=> m2 = \x ->
    let (y, s1) = m1 x
        (z, s2) = m2 y
    in (z, s1 ++ s2)

eeturn x = (x, "")

fs (x, y) = x

sn (x, y) = y

p :: Int -> Int
p x = x

q :: Int -> Bool
q _ = True

p' :: (Int, Int, Bool) -> Int
p' (x, _, _) = x

q' :: (Int, Int, Bool) -> Bool
q' (_, _, b) = b

-- universal property of product.jpg --

m :: Int -> (Int, Bool)
m x = (x, True)

-- universal property of product, e.g..jpg --
-- p x = fs (m x) = x --
-- q x = sn (m x) = True --

-- Could we find some m' that would help us reconstruct fs and sn from p and q? --
-- q always returned True and we know that there are pairs whose second component is False. We can’t reconstruct snd from q. --
-- The second example is different: we retain enough information after running either p' or q', but there is more than one way to factorize fs and sn. --
-- Putting it all together, given any type c with two projections p and q, there is a unique m from c to the Cartesian product (a, b) that factorizes them. In fact, it just combines p and q into a pair. --

-- m :: c -> (a, b) --
-- m x = (p x, q x) --

--That makes the Cartesian product (a, b) our best match, which means that this universal construction works in the category of sets. It picks the product of any two sets. --

factorizer :: (c -> a) -> (c -> b) -> (c -> (a, b))
factorizer p q = \x -> (p x, q x)

data Contact = PhoneNum Int | EmailAddr String

-- Here, PhoneNum and EmailAddr serve both as constructors (injections), and as tags for pattern matching. --

helpdesk :: Contact
helpdesk = PhoneNum 2222222

-- Unlike the canonical implementation of the product that is built into Haskell as the primitive pair, the canonical implementation of the coproduct is a data type called Either, which is defined in the standard Prelude as: --
-- data Either a b = Left a | Right b --
-- It is parameterized by two types, a and b and has two constructors: Left that takes a value of type a, and Right that takes a value of type b. --

-- coproduct.jpg --

factorizer1 :: (a -> c) -> (b -> c) -> Either a b -> c
factorizer1 i j (Left a) = i a
factorizer1 i j (Right b) = j b

-- ((a, b), c) and (a, (b, c)) are isomorphic, --
alpha :: ((a, b), c) -> (a, (b, c))
alpha ((x, y), z) = (x, (y, z))

alpha_inv :: (a, (b, c)) -> ((a, b), c)
alpha_inv (x, (y, z)) = ((x, y), z)

--(a, ()) is isomorphic to a, too --
-- These observations can be formalized by saying tha Set (the category of sets) is a monoidal category((𝑎 ∗ 𝑏) ∗ 𝑐 = 𝑎 ∗ (𝑏 ∗ 𝑐))--

--data constructor--
data PP a b = P a b
-- instance --
ss :: PP Bool Bool
ss = P True False
--the name spaces for type and data constructors are separate in Haskell--
data Pair a b = Pair a b
stmt :: Pair Bool String
stmt = Pair True "213"

-- startsWithSymbol :: (String, String, Int) -> Bool--
--startsWithSymbol (name, symbol, _) = isPrefixOf symbol name--
--This code is error prone, and is hard to read and maintain. It’s much better to define a record:--

data Element = Element { name :: String
, symbol :: String
, atomicNumber :: Int }
-- The two representations are isomorphic, as witnessed by these two functions--
tupleToElem :: (String, String, Int) -> Element
tupleToElem (n, s, a) = Element { name = n
                                                 , symbol = s
                                                 , atomicNumber = a }

elemToTuple :: Element -> (String, String, Int)
elemToTuple e = (name e, symbol e, atomicNumber e)

-- With the record syntax for Element, our function startsWithSymbol becomes more readable: --
-- startsWithSymbol :: Element -> Bool --
--startsWithSymbol e = isPrefixOf (symbol e) (name e) --
-- or, startsWithSymbol e = symbol e `isPrefixOf` name e--

-- Just as the product in the category of sets gives rise to product types, the coproduct gives rise to sum types. The canonical implementation of a sum type in Haskell is: --
-- data Either a b = Left a | Right b --
-- data OneOfThree a b c = Sinistral a | Medial b | Dextral c --
-- Either a Void is isomorphic to a--

data Color = Red | Green | Blue | Pink

data Mayb a = Nott | Jus a
-- The Maybe type is a sum of two types. --
--data NothingType = Nothing--
--data JustType a = Just a--
-- We could have encoded Maybe as: data Maybe a = Either () a--

--𝑎 × (𝑏 + 𝑐) = 𝑎 × 𝑏 + 𝑎 × 𝑐, Here’s the function that converts them one way:--
prodToSum :: (a, Either b c) -> Either (a, b) (a, c)
prodToSum (x, e) =
       case e of
          Left y -> Left (x, y)
          Right z -> Right (x, z)

sumToProd :: Either (a, b) (a, c) -> (a, Either b c)
sumToProd e =
      case e of
         Left (x, y) -> (x, Left y)
         Right (x, z) -> (x, Right z)

