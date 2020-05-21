-- since the version 0.41.0.0
-- The resulting file is here: https://soundcloud.com/oleksandrzhabenko/unexpected-instruments-virtualized

-- To work properly, there must be a file \"ABC.wav\" in the current directory. The result will be different for the different files, but probably not unique 
-- for every new \"ABC.wav\" file though the full repetition is unlikely to occur for the very another file.

import DobutokO.Sound.Uniq (uniqOverSoXSynthNGen4E6GSPar)
import DobutokO.Sound.Functional.Params
import DobutokO.Sound.IntermediateF (soxREA1)
import MMSyn7l (soxE)
import System.Directory (renameFile)
import Data.Vector (fromList)

main :: IO ()
main = uniqOverSoXSynthNGen4E6GSPar "ABC.wav" (P2s 60 15 "Ukrainian Dorian scale") 0.1 0.1 0.01 
  "І ще у цей же день річниці Одруження у отця Івана та матінки Юлії, а також у Галини." 
    "Я був радий також і їх вітати, хоча якось не знав чи забув про ті події." "Здається, я тут один параметр пропустив. Отже, додаю зараз, щоб був на своєму місці."
     (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "Буває так, що ти радієш несподівано, а буває, що й очікувано."
       "Так, радість буває різною, і бажаю усім радості, чистої та доброї. Амінь." 0.001 >> soxREA1 10 45 60 100 0 6 1 "221w" "result" "New3.flac" >> 
         soxE "New3.flac" ["tempo", "1.45", "reverb", "chorus", "0.6", "0.9", "50", "0.4", "0.25", "2", "-t", "60", "0.32", "0.4", "1.3", "-s", "speed", 
           "0.7", "reverb", "-w", "20", "vol", "2", "tempo", "1.3", "reverb", "1", "vol", "3"] >> renameFile "New3.flac" 
             "UnexpectedInstrumentsVirtualized.flac"
