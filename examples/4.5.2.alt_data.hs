
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

data Value = Yen Int
           | USD Int
           deriving (Show, Eq, Ord)

instance Num Value where
    (+) (Yen x1) (Yen x2) = Yen (x1 + x2)
    (+) (USD x1) (USD x2) = USD (x1 + x2)
    (+) _        _        = error "NG pattern"   -- need runtime checking
    (*) = undefined
    (-) = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined
    negate = undefined



-- example
{-
ghci> y = Yen 1
ghci> z = USD 10

ghci> :type y
y :: Value
ghci> :type z
z :: Value

ghci> y + y
Yen 2
ghci> z + z
USD 20

ghci> y + z
*** Exception: NG pattern
CallStack (from HasCallStack):
  error, called at 4.5.2.alt_data.hs:11:29 in main:Main
-}




