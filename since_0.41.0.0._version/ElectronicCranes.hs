-- since version 0.41.0.0

-- see the resulting file: https://soundcloud.com/oleksandrzhabenko/electroniccranest2s14142t14

-- To work properly, there must be a file \"ABC.wav\" in the current directory. The result will be different for the different files, but probably not unique 
-- for every new \"ABC.wav\" file though the full repetition is unlikely to occur for the very another file.

import DobutokO.Sound.Uniq (uniqOverSoXSynthNGen4E6GSPar)
import DobutokO.Sound.Functional.Params
import Data.Vector (fromList)

main :: IO ()
main = uniqOverSoXSynthNGen4E6GSPar "../result00345.wav" (P2s 38 15 "Ukrainian Dorian scale") 0.1 0.4 0.01 "Доброго ранку!" 
  "Добрий день!" "Добрий вечір!" (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "А завтра буде вівторок." "А сьогодні понеділок" 0.001
