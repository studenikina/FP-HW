module Block2
       ( removeAt,
         collectEvery,
         stringSum,
         mergeSort
       ) where

import Data.List
import System.Random (newStdGen, randomRs)

removeAt :: Int -> [a] -> [a]
removeAt 0 (x:list) = list
removeAt n (x:list) = x:removeAt (n-1) list


stringSum :: String -> Int
stringSum s = sum (map read $ words s)

collectEvery :: Int -> [a] -> ([a], [a])
collectEvery 0 (x:list) = (list, [])
collectEvery n (x:list) = (x:fst nxt, snd nxt)
             where nxt = collectEvery (n-1) list


randomIntList :: Int -> Int -> Int -> IO [Int]
randomIntList n from to = take n . randomRs (from, to) <$> newStdGen

merge :: [Int] -> [Int] -> [Int]
merge [] [] = []
merge xs [] = xs
merge [] ys = ys
merge a@(x:xs) b@(y:ys) = if x < y then x : merge xs b else y : merge a ys

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge left right
  where 
    middle = length xs `div` 2
    left = mergeSort (take middle xs)
    right = mergeSort (drop middle xs)

         

