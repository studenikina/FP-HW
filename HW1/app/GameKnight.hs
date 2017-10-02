module GameKnight
       ( createKnight
       ) where

import System.Random (newStdGen, randomRs)

data Knight = Knight 
     {
       name :: String,
       health :: Int,
       maxHealth :: Int,
       arsenal :: Bool,
       power :: Int
     }

createKnight :: Knight
createKnight = {name = "name", health = 91, maxHealth = 100, arsenal = True, power = 10}

                
