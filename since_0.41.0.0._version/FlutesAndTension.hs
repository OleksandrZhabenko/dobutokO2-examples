-- since the version 0.41.0.0

-- the result is here: https://soundcloud.com/oleksandrzhabenko/flutes-and-tension-dobutoko2

-- To work properly, there must be a file \"ABC.wav\" in the current directory. The result will be different for the different files, but probably not unique 
-- for every new \"ABC.wav\" file though the full repetition is unlikely to occur for the very another file.

import DobutokO.Sound.Uniq (uniqOverSoXSynthNGen4E6GSPar)
import DobutokO.Sound.Functional.Params
import DobutokO.Sound.IntermediateF (soxREA1)
import MMSyn7l (soxE)
import System.Directory (removeFile)
import Data.Vector (fromList)

main :: IO ()
main = uniqOverSoXSynthNGen4E6GSPar "../result00345.wav" (P2s 60 15 "Ukrainian Dorian scale") 0.1 0.2 0.01 
  "Сьогодні День пам'яті та примирення, також День народження у Лесі Горової, і День святого апостола та євангелиста Марка" 
   "У нас сонячний і прохолодний день, на небі є хмарки, що пливуть." "Є цікава думка, як можна отримати ще музику."
    (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "Зараз саме цю думку і випробую. Цікаво, що з того вийде."
       "Так чи інакше має бути щось незвичне, адже оригінальність закладена в основу програми" 0.001 >> 
         soxREA1 30 25 30 100 0 6 1 "221w" "result" "New.flac" >>
           soxE "New.flac" ["FlutesAndTension.flac", "speed", "1.57", "reverb", "-w", "80", "speed", "1.3", "vol", "1.5"] >>
             removeFile "New.flac"
