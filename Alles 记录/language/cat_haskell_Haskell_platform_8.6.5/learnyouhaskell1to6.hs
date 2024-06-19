-- :t head --
-- head :: [a] -> a --

-- :t fst  --
-- fst :: (a, b) -> a --

-- What is this a? Is it a type? Remember that we previously stated that types are written in capital case, so it can't exactly be a type. Because it's not in capital case it's actually a type variable. --

-- :t (==) -- 
-- (==) :: (Eq a) => a -> a -> Bool -- 
-- Note: the equality operator, == is a function. So are +, *, -, / and pretty much all operators. If a function is comprised only of special characters, it's considered an infix function by default. If we want to examine its type, pass it to another function or call it as a prefix function, we have to surround it in parentheses. --
-- Interesting. We see a new thing here, the => symbol. Everything before the => symbol is called a class constraint. We can read the previous type declaration like this: the equality function takes any two values that are of the same type and returns a Bool. The type of those two values must be a member of the Eq class (this was the class constraint). --

-- :t (>)  --
-- (>) :: (Ord a) => a -> a -> Bool  --
-- All the types we covered so far except for functions are part of Ord. Ord covers all the standard comparing functions such as >, <, >= and <=. The compare function takes two Ord members of the same type and returns an ordering. Ordering is a type that can be GT, LT or EQ, meaning greater than, lesser than and equal, respectively. --

-- ghci> "Abrakadabra" < "Zebra"  --
-- True --  
-- ghci> "Abrakadabra" `compare` "Zebra" --  
-- LT -- 
-- ghci> 5 >= 2 --  
-- True --  
-- ghci> 5 `compare` 3  --
-- GT  --

-- ghci> read "4" -- 
-- <interactive>:1:0: -- 
--    Ambiguous type variable `a' in the constraint: -- 
--      `Read a' arising from a use of `read' at <interactive>:1:0-7  --
--    Probable fix: add a type signature that fixes these type variable(s) --

-- ghci> read "5" :: Int  --
-- 5  --
-- ghci> read "5" :: Float --  
-- 5.0  --
-- ghci> (read "5" :: Float) * 4 -- 
-- 20.0  --
-- ghci> read "[1,2,3,4]" :: [Int] -- 
-- [1,2,3,4]  --
-- ghci> read "(3, 'a')" :: (Int, Char) -- 
-- (3, 'a') -- 

-- ghci> ['a'..'e'] -- 
-- "abcde"  --
-- ghci> [LT .. GT] -- 
-- [LT,EQ,GT]  --
-- ghci> [3 .. 5] -- 
-- [3,4,5]  --
-- ghci> succ 'B'  --
-- 'C'  --

-- ghci> 20 :: Int  --
-- 20  --
-- ghci> 20 :: Integer -- 
-- 20 -- 
--ghci> 20 :: Float--  
--20.0  --
--ghci> 20 :: Double -- 
--20.0 -- 

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight, you emo, you!"  
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  
          (skinny, normal, fat) = (18.5, 25.0, 30.0)  
-- pattern match --

cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea 

describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list."

describeList1 :: [a] -> String  
describeList1 xs = "The list is " ++ what xs  
    where what [] = "empty."  
          what [x] = "a singleton list."  
          what xs = "a longer list."  

maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs  

maximum1 :: (Ord a) => [a] -> a  
maximum1 [] = error "maximum of empty list"  
maximum1 [x] = x  
maximum1 (x:xs) = max x (maximum' xs)  

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted  

-- (let (a,b,c) = (1,2,3) in a+b+c) * 100  --
-- 600  --

calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]  

-- ghci> [x*2 | x <- [1..10], x*2 >= 12]  --
-- [12,14,16,18,20] --  

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   

-- ghci> boomBangs [7..13]  --
-- ["BOOM!","BOOM!","BANG!","BANG!"]   --

-- ghci> [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  --
-- [10,11,12,14,16,17,18,20]   --

-- ghci> let nouns = ["hobo","frog","pope"]  --
--ghci> let adjectives = ["lazy","grouchy","scheming"]  --
--ghci> [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]  --
--["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog",  --
--"grouchy pope","scheming hobo","scheming frog","scheming pope"]  --

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   
-- list comprehension --

applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x)  

flip' :: (a -> b -> c) -> (b -> a -> c)  
flip' f = g  
    where g x y = f y x  

-- map :: (a -> b) -> [a] -> [b]  --
--map _ [] = []  --
--map f (x:xs) = f x : map f xs  --
--ghci> map (+3) [1,5,3,1,6]  --
--[4,8,6,4,9]  --
--ghci> map (++ "!") ["BIFF", "BANG", "POW"]  --
--["BIFF!","BANG!","POW!"]  --
--ghci> map (replicate 3) [3..6]  --
--[[3,3,3],[4,4,4],[5,5,5],[6,6,6]]  --
--ghci> map (map (^2)) [[1,2],[3,4,5,6],[7,8]]  --
--[[1,4],[9,16,25,36],[49,64]] -- 
--ghci> map fst [(1,2),(3,5),(6,3),(2,6),(2,5)]  --
--[1,3,6,2,2]  --
--ghci> filter (>3) [1,5,3,2,1,6,4,3,2,1]  --
--[5,6,4]  --
--ghci> filter (==3) [1,2,3,4,5]  --
--[3] -- 
--ghci> filter even [1..10]  --
--[2,4,6,8,10]  --
--ghci> let notNull x = not (null x) in filter notNull [[1,2,3],[],[3,4,5],[2,2],[],[],[]]  --
--[[1,2,3],[3,4,5],[2,2]]  --
--ghci> filter (`elem` ['a'..'z']) "u LaUgH aT mE BeCaUsE I aM diFfeRent"  --
--"uagameasadifeent"  --
--ghci> filter (`elem` ['A'..'Z']) "i lauGh At You BecAuse u r aLL the Same" -- 
--"GAYBALLS"  --

sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  
--Let's take an in-depth look into how this fold happens. \acc x -> acc + x is the binary function. 0 is the starting value and xs is the list to be folded up. Now first, 0 is used as the acc parameter to the binary function and 3 is used as the x (or the current element) parameter. 0 + 3 produces a 3 and it becomes the new accumulator value, so to speak. Next up, 3 is used as the accumulator value and 5 as the current element and 8 becomes the new accumulator value. Moving forward, 8 is the accumulator value, 2 is the current element, the new accumulator value is 10. Finally, that 10 is used as the accumulator value and 1 as the current element, producing an 11. Congratulations, you've done a fold!--