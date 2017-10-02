module Block1
       ( order3,
         getNumb,
         highestBit,
         smartReplicate,
         contains
       ) where


order3 :: (Ord a) => (a, a, a) -> (a, a, a)
order3 (x, y, z) =
    let a = max x y
        b = max a z
    in if (b == x)
           then (min y z, max y z, b)
           else if (b == y)
                    then (min x z, max x z, b)
                    else (min y x, max y x, b)

getNumb :: Int -> Int
getNumb a
      | a < 1 = -1
      | a == 1 = 0 
      | a >= 2 = 1 + getNumb (a `div` 2)

highestBit :: Int -> (Int, Int)
highestBit x = (2^(getNumb x), getNumb x)

smartReplicate :: [Int] -> [Int]
smartReplicate x =
     concat $ map (\y -> replicate y y) x

contains :: (Eq a) => a -> [[a]] -> [[a]]
contains elem list =
       filter (any (elem ==) ) list

                 