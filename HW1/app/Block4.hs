module Block4
       ( splitOn
       ) where

splitOn :: (Eq a) => a -> [a] -> [[a]]
splitOn _ [] = []
splitOn x list = part : parts
    where
      part = takeWhile (/= x) list
      parts = splitOn x $ drop (length part + 1) list
         

