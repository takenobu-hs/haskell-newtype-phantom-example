
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value a = Val Int deriving (Show, Eq, Ord, Num)

