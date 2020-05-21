-- since dobutokO2 version 0.41.0.0

import qualified Data.Vector as V (Vector,imap,fromList,replicate)
import System.Directory (renameFile)
import DobutokO.Sound.Functional (overSoXSynth2FDN_S2G)
import DobutokO.Sound.Functional.Basics (OvertonesO,prependZeroes)

f :: Integer -> Double -> OvertonesO
f k x = V.imap (\i t -> (1000 * abs (sin (fromIntegral i * t)), 0.9)) (V.fromList . map (\z -> x * fromIntegral z) $ ([0..k]::[Integer]))

vec :: V.Vector Double
vec = V.imap (\i x -> 15 * (x * x / fromIntegral ((i + 1) * (i + 1)) - 1)) . V.replicate 501 $ 0.9

main :: IO ()
main = mapM_ (\v -> overSoXSynth2FDN_S2G (f v) (567.0, 3.0) 0 "б" vec "962f" >> 
                 renameFile "result.flac" ("result" ++ (prependZeroes 4 . show $ v) ++ ".quart.flac")) [2..15]
