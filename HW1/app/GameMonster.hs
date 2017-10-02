module GameMonster
       ( createMonster,
         createKnight,
         fight
       ) where

import System.Random (newStdGen, randomRs)

data Monster = Monster 
     {
       name :: String,
       health :: Int,
       maxHealth :: Int,
       arsenal :: Bool,
       power :: Int
     }

createMonster :: Monster
createMonster = {name = "name", health = 90, maxHealth = 100, arsenal = True, power = 10}

data Knight = Knight 
     {
       name :: String,
       health :: Int,
       maxHealth :: Int,
       arsenal :: Bool,
       power :: Int
     }

createKnight :: Knight
createKnight = {name = "name", health = 91, maxHealth = 100, arsenal = True, power = 8}

data Result = Result
     {
       winner :: String,
       loser :: String,
       rounds :: Int,
       winHealth :: Int,
       info :: String
     }


fight :: Monster -> Knight -> Result
fight createMonster createKnight = {  



                
