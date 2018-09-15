
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Rational deriving (Show, Eq, Ord, Num, Fractional)

data ValYen
data ValUSD

type Yen = Value ValYen
type USD = Value ValUSD

