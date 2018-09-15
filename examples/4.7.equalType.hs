
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable #-}                               -- extention

import Data.Typeable                                              -- import

newtype Value a = Val Int deriving (Show, Eq, Ord, Num, Typeable) -- Typeable

data ValYen
data ValUSD

type Yen = Value ValYen
type USD = Value ValUSD


-- example-1
isYen :: Typeable a => Value a -> Bool
isYen x = typeOf x == typeOf (1 :: Yen)         -- use `typeOf`

-- example-2
switchVal :: Typeable a => Value a -> String
switchVal x
    | typeOf x == typeOf (1 :: Yen) = "This is Yen."
    | typeOf x == typeOf (1 :: USD) = "This is USD."
    | otherwise                     = "Other"

