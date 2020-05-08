-- since the version 0.39.0.1

-- The resulting file "end.wav" was after-processed so: 
-- in the GHCi:
-- soxREA1 10 45 60 100 0 6 1 "221w" "result" "New3.flac"
-- and then in the terminal:
-- sox New3.flac ~/UnexpectedInstrumentsVirtualized.flac tempo 1.45 reverb chorus 0.6 0.9 50 0.4 0.25 2 -t 60 0.32 0.4 1.3 -s speed 0.7 reverb -w 20 vol 2 tempo 1.3 reverb 1 vol 3
-- or in the GHCi equivalently:
-- soxE "New3.flac" ["~/UnexpectedInstrumentsVirtualized.flac", "tempo", "1.45", "reverb", "chorus", "0.6", "0.9", "50", "0.4", 
--      "0.25", "2", "-t", "60", "0.32", "0.4", "1.3", "-s", "speed", "0.7", "reverb", "-w", "20", "vol", "2", "tempo", "1.3", 
--           "reverb", "1", "vol", "3"]

-- The resulting file is here: 


import DobutokO.Sound
import DobutokO.Sound.Functional
import Data.Vector

main = let params = P2s 60 15 "Ukrainian Dorian scale" in uniqOverSoXSynthNGen4E6GSPar "../result00345.wav" params
  0.1 0.1 0.01 "І ще у цей же день річниці Одруження у отця Івана та матінки Юлії, а також у Галини." 
    "Я був радий також і їх вітати, хоча якось не знав чи забув про ті події." "Здається, я тут один параметр пропустив. Отже, додаю зараз, щоб був на своєму місці."
    (fromList ([2,3,2,3,2,3,8,9,8,9,8,9,4,0,0,12,0,0]::[Int])) "Буває так, що ти радієш несподівано, а буває, що й очікувано."
       "Так, радість буває різною, і бажаю усім радості, чистої та доброї. Амінь." 0.001
