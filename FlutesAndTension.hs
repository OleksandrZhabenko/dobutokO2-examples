-- since the version 0.39.0.0

-- the resulting files were processed as follows:
-- in GHCi: soxREA1 30 25 30 100 0 6 1 "221w" "result" "New.flac"
-- then in the terminal: sox New.flac ~/FlutesAndTension.flac speed 1.57 reverb -w 80 speed 1.3 vol 1.5

import DobutokO.Sound
import DobutokO.Sound.Functional
import Data.Vector

main = let params = P2s 60 15 "Ukrainian Dorian scale" in uniqOverSoXSynthNGen4E6GSPar "../result00345.wav" params
  0.1 0.2 0.01 "Сьогодні День пам'яті та примирення, також День народження у Лесі Горової, і День святого апостола та євангелиста Марка" 
    "У нас сонячний і прохолодний день, на небі є хмарки, що пливуть." "Є цікава думка, як можна отримати ще музику."
    (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "Зараз саме цю думку і випробую. Цікаво, що з того вийде."
       "Так чи інакше має бути щось незвичне, адже оригінальність закладена в основу програми" 0.001
