
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Int deriving (Show, Eq, Ord, Num)

data ValYen = ValYen            -- added right-hand-side
data ValUSD = ValUSD            -- added right-hand-side

type Yen = Value ValYen
type USD = Value ValUSD


fromValue :: a -> Value a -> Int
fromValue _ (Val x) = x

