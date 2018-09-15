
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Yen = ValYen Int deriving (Show, Eq, Ord, Num)
newtype USD = ValUSD Int deriving (Show, Eq, Ord, Num)


class Num a => Value a where
    add :: a -> a -> a
    add x1 x2 = x1 + x2

instance Value Yen
instance Value USD

