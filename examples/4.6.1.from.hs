
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Int deriving (Show, Eq, Ord, Num)

data ValYen
data ValUSD

type Yen = Value ValYen
type USD = Value ValUSD


fromYen :: Value ValYen -> Int
fromYen (Val x) = x

fromUSD :: Value ValUSD -> Int
fromUSD (Val x) = x

