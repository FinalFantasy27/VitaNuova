-- data Maybe a = Nothing | Just a--
--for any function from a to b, we would like to produce a function from Maybe a to Maybe b:--
---f' :: Maybe a -> Maybe b--
--f' Nothing = Nothing--
--f' (Just x) = Just (f x)--
-- functor.jpg--
--fmap :: (a -> b) -> Maybe a -> Maybe b--
--fmap _ Nothing = Nothing--
--fmap f (Just x) = Just (f x)--

--Typeclass--
--class Eq a where--
--     (==) :: a -> a -> Bool--

data Point = Pt Float Float