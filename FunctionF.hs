import qualified Data.Vector as V
import System.Directory
import DobutokO.Sound.Functional

f :: Integer -> Double -> V.Vector (Double, Double)
f k x = V.imap (\i t -> (1000 * abs (sin (fromIntegral i * t)), 0.9)) (V.fromList . map (\z -> x * fromIntegral z) $ ([0..(10 * k)]::[Integer]))

vec :: V.Vector Double
vec = V.imap (\i x -> 15 * (x * x / fromIntegral ((i + 1) * (i + 1)) - 1)) . V.replicate 501 $ 0.9

main :: IO ()
main = do
  mapM_ (\v -> do { overSoXSynth2FDN_S2G (f v) (567.0, 3.0) 0 "б" vec "962f"
                   ; renameFile "result.flac" $ "result" ++ (prependZeroes 4 . show $ v) ++ ".quart.flac"
                   }) [49..50]
