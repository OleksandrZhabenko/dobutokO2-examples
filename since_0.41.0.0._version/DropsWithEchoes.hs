-- since the dobutokO2 version 0.41.0.0

-- the generated file is here: https://soundcloud.com/oleksandrzhabenko/dropswithechoes

-- the generated file with another after-processing with SoX effects is here: https://soundcloud.com/oleksandrzhabenko/hard-rhythms-dobutoko2

-- To work properly, there must be a file \"ABC.wav\" in the current directory. The result will be different for the different files, but probably not unique 
-- for every new \"ABC.wav\" file though the full repetition is unlikely to occur for the very another file.

import DobutokO.Sound.Uniq (uniqOverSoXSynthNGen4E6GSPar)
import DobutokO.Sound.Functional.Params  
import Data.Vector (fromList)

main :: IO ()
main = uniqOverSoXSynthNGen4E6GSPar "ABC.wav" (P2s 44 15 "Ukrainian Dorian scale") 0.1 0.1 0.01 
  "Сьогодні був вівторок, ювілей у Предстоятеля Української Греко-Католицької Церкви Блеженнішого Святослава Шевчука" 
    "Йому виповнилося п'ятдесят років." "У Старому Завіті саме така річниця називається ювілеєм." 
      (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "Завтра буде середа, шосте травня, День святого Юрія Переможця." 
        "Маю надію, що і сьогоднішній вечір і завтрашній день будуть світлими." 0.001
          

