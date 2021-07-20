module Searching.BinarySearch where

binarySearch :: (Ord a, Eq a) => [a] -> a -> Bool
binarySearch [] _ = False
binarySearch list el
  | el == y = True
  | el > y = binarySearch ys el
  | otherwise = binarySearch firstHalf el
  where
    half = div (length list) 2
    (firstHalf, y:ys) = splitAt half list
