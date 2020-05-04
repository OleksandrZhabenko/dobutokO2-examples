-- since version 0.38.1.0

-- see the resulting file: https://soundcloud.com/oleksandr343/electroniccranest2s14142t14

import DobutokO.Sound
import DobutokO.Sound.Functional
import Data.Vector

main = let params = P2s 38 15 "Ukrainian Dorian scale" in uniqOverSoXSynthNGen4E6GSPar "../result00345.wav" params 
  0.1 0.4 0.01 "Доброго ранку!" "Добрий день!" "Добрий вечір!" 
    (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "А завтра буде вівторок." 
       "А сьогодні понеділок" 0.001
