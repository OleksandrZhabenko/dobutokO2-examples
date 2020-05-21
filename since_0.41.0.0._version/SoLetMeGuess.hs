-- since the version 0.41.0.0

-- the resulting file is here: https://soundcloud.com/oleksandrzhabenko/so-let-me-guess 

-- To work properly, there must be a file \"ABC.wav\" in the current directory. The result will be different for the different files, but probably not unique 
-- for every new \"ABC.wav\" file though the full repetition is unlikely to occur for the very another file.

import DobutokO.Sound.Uniq (uniqOverSoXSynthNGen4E6GSPar)
import DobutokO.Sound.Functional.Params
import DobutokO.Sound.IntermediateF (soxE2C)
import System.Directory (renameFile)
import Data.Vector (fromList)

main :: IO ()
main = uniqOverSoXSynthNGen4E6GSPar "ABC.wav" (P2s 60 15 "Ukrainian Dorian scale") 0.1 0.2 0.01 
  "Сьогодні День пам'яті та примирення, також День народження у Лесі Горової, і День святого апостола та євангелиста Марка" 
   "У нас сонячний і прохолодний день, на небі є хмарки, що пливуть." "Є цікава думка, як можна отримати ще музику."
     (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "Зараз саме цю думку і випробую. Цікаво, що з того вийде."
       "Так чи інакше має бути щось незвичне, адже оригінальність закладена в основу програми" 0.001 >> soxE2C "end.wav" ["reverb", "-w", "1", 
         "speed", "0.8", "tempo", "1.8", "reverb", "10", "vol", "0.45", "reverb", "1", "reverb", "-w", "30", "vol", "3"] >> 
           renameFile "end.flac" "SoLetMeGuess.flac"
