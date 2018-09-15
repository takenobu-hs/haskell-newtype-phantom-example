
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Int deriving (Show, Eq, Ord, Num)

data ValYen
data ValUSD

type Yen = Value ValYen
type USD = Value ValUSD

