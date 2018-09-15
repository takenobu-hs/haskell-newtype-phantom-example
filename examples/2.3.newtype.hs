
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

newtype Value = Val Int deriving (Show, Eq, Ord, Num)

