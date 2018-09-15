
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Int deriving (Show, Eq, Ord, Num)

data ValYen
data ValUSD

type Yen = Value ValYen
type USD = Value ValUSD


-- example
add :: Value a -> Value a -> Value a
add x1 x2 = x1 + x2

toYen :: Int -> Value ValYen
toYen x = Val x

