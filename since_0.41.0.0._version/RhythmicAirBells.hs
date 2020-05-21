-- since the version 0.41.0.0

-- the resulting file can be found here: https://soundcloud.com/oleksandrzhabenko/rhythmic-air-bells

import qualified Data.Vector as V (fromList,mapM_,toList)
import DobutokO.Sound.Functional.Params (Params (..),overMeloPar)
import DobutokO.Sound.IntermediateF (listVDirectory3G,listVDirectory,soxREA1)
import SoXBasics (playA)
import System.Directory (renameFile)
import System.Process (readProcessWithExitCode)
import EndOfExe (showE)
import Data.Maybe (fromJust)

main :: IO ()
main = do 
  mapM_ (\z -> do 
    overMeloPar (\t -> V.fromList [(t,1.0),(2 * t, 0.79),(3 * t,0.68),(4*t,0.57),(5*t,0.46),(6*t,0.35),(7*t,0.24),(8*t,0.13),(9*t,0.02)]) 
      (\t -> abs (cos (pi / t))) (P2s 70 12 "Ukrainian Dorian scale") 3.141592  440.0 z 
    playA "result*wav" 
    dir <- listVDirectory 
    V.mapM_ (\file -> renameFile file $ show z ++ "." ++ file) dir) [220,330,440,550,660,770,880,110]
  mapM_ ((\z2 -> soxREA1 20 25 30 100 0 6 1 "221w" (show z2) $ "Test" ++ show z2 ++ "0.flac") . (* 11)) [1..8]
  dirT <- fmap V.toList . listVDirectory3G "442f" $ "Test"
  (_,_,herr) <- readProcessWithExitCode (fromJust (showE "sox")) (dirT ++ ["RhythmicAirBells.flac", "reverb", "100", "speed", "0.5", "tempo", 
    "2", "reverb", "-w", "70", "vol", "5", "reverb", "60", "reverb", "-w", "sinc", "200-600", "vol", "5", "reverb", "70"]) ""
  print herr
  
