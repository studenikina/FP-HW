module GameTime
       ( nextDay,
         afterDays,
         isWeekend,
         daysToParty
       ) where

data DayOfWeek = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
	deriving (Eq, Ord, Show, Enum)

nextDay :: DayOfWeek -> DayOfWeek
nextDay day = toEnum ((fromEnum day + 1) `mod` 7)

afterDays :: DayOfWeek -> Int -> DayOfWeek
afterDays day x = toEnum ((fromEnum day + x) `mod` 7)

isWeekend :: DayOfWeek -> Bool
isWeekend day = fromEnum day >= 5

daysToParty :: DayOfWeek -> Int
daysToParty day |(fromEnum day < 5)  = toEnum (4 - fromEnum day)
                |(fromEnum day >= 5) = toEnum (fromEnum day - 1)
                
