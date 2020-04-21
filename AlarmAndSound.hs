-- You can listen to the part of the created sound on the YouTube: https://youtu.be/V830NEERe0A
import DobutokO.Sound.Executable
import DobutokO.Sound.Functional
import qualified Data.Vector as V 
import Data.Maybe (fromMaybe)

-- Since dobutokO2 version 0.33.0.0

-- README.markdown is available online at: https://hackage.haskell.org/package/dobutokO2-0.33.0.0/src/README.markdown
main :: IO ()
main = soundGen3G_O 6 5 440 "README.markdown"  (overConcat . V.map renormF . splitO 3 . (\t -> let t1 = fromMaybe 110 (liftInEnku 6 5 t) in 
  V.fromList [(1.0 * t1, 0.4588962),(2 * t1, 0.6853),(3 * t1, 0.268),(4 * t1, 0.6823),(5 * t1, 0.53)])) 0.5 
    "Іноді є цікавим експериментування, щоб побачити якийсь результат, адже він може чомусь навчити, дати щось краще пізнати" gAdds01 (\z r1 f -> z)
      (\i -> V.fromList [(10.0 * fromIntegral i, 0.4588962),(20.0 * fromIntegral i, 0.6853),(30.0 * fromIntegral i, 0.268),
        (40.0 * fromIntegral i, 0.6823),(50.0 * fromIntegral i, 0.53)]) id (\t -> let t1 = fromMaybe 110 (liftInEnku 6 5 t) in 
          V.fromList [(1.0 * t1, 0.4588962),(2 * t1, 0.6853),(3 * t1, 0.268),(4 * t1, 0.6823),(5 * t1, 0.53)])
