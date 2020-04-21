import DobutokO.Sound
import DobutokO.Sound.Executable
import DobutokO.Sound.Functional
import DobutokO.Sound.Keyboard
import System.Process
import qualified Data.Vector as V 
import EndOfExe (showE)

testSoundGen2G :: FilePath -> (Double -> OvertonesO) -> Double -> String -> IO ()
                              ----------------------                        
  --                                    f
-- Since dobutokO2-0.33.0.0 the following is valid.  
testSoundGen2G file f y zs = do
  vecA0 <- fmap (V.map (`quotRem` 108)) (readFileDoubles file) -- >>= print
  let n = V.length vecA0
      freq0 j = V.unsafeIndex notes (snd . V.unsafeIndex vecA0 $ j `rem` n)
      f0 t = V.fromList [(0.05763181818181818 * t, 0.3598),(1.112159090909091 * t, 0.4588962),(2 * t, 0.6853),(3 * t, 0.268),(4 * t, 0.6823),(5 * t, 0.53)]
      fA1 j = fAddFElem (freq0 (j + 1),0.5) f0 gAdd04 
      fR1 j = fRemoveFElem (freq0 (j + 1),0.5) f0 gRem03
      vecB = V.imap (\j r -> (V.unsafeIndex notes (snd r),
       case fst r of
         0 -> f0
         1 -> fA1 j
         2 -> fA1 j
         3 -> fA1 j
         4 -> fA1 j
         _ -> fR1 j)) vecA0
      (t, ws) = splitAt 1 . syllableStr n $ zs
      m0    = length ws
      zeroN = numVZeroesPre vecB
      v2    = V.map (\yy -> y * fromIntegral (yy * m0) / fromIntegral (head t)) . V.fromList $ ws in V.imapM_ (\j (x,k) -> do
        h1 (\u -> k (1.1 * freq0 j)) (x, (V.unsafeIndex v2 (j `rem` (V.length v2)))) j 
        renameFile ("result.wav") $ "result0" ++ prependZeroes zeroN (show (j + 1)) ++ ".wav") vecB
  endFromResult

h1 :: (Double -> OvertonesO) -> (Double, Double) -> Int -> IO ()
h1 f (x, y) j = do
    let note0 = closestNote (if x /= 0.0 then abs x else V.unsafeIndex notes 0)
        v0    = f note0
        ts = showFFloat (Just 4) (abs y) ""
    (code,_,herr) <- readProcessWithExitCode (fromJust (showE "sox")) ["-r22050", "-n", "testA.wav", "synth", ts,"sine",showFFloat Nothing note0 ""] ""
    print herr
    partialTest_k v0 0 ts
    mixTest

-- README.markdown is available online at: https://hackage.haskell.org/package/dobutokO2-0.28.0.0/src/README.markdown
main = testSoundGen2G "README.markdown" (\t -> V.fromList [(0.05763181818181818 * t, 0.3598),(1.112159090909091 * t, 0.4588962),(1.8076136363636364 * t, 0.6853)]) 0.4 "Ой у лузі червона калина"
