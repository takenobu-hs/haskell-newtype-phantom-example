
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Int deriving (Show, Eq, Ord, Num, Enum, Real, Integral)

data ValYen
data ValUSD

type Yen = Value ValYen
type USD = Value ValUSD

