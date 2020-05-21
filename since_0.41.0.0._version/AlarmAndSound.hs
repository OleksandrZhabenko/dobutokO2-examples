-- You can listen to the part of the created sound on the YouTube: https://youtu.be/V830NEERe0A
import DobutokO.Sound.Complex (soundGen3G_O)
import DobutokO.Sound.Functional.Basics (liftInEnku)
import DobutokO.Sound.Functional.Elements (gAdds01)
import qualified Data.Vector as V (fromList)
import Data.Maybe (fromMaybe)

-- Since dobutokO2 version 0.41.0.0 and dobutokO3 version 0.1.0.0

-- The file \"README.markdown\" must be present in the current directory and is available online at: https://hackage.haskell.org/package/dobutokO2-0.33.0.0/src/README.markdown
main :: IO ()
main = soundGen3G_O 6 5 440 "README.markdown" 0.5 
    "Іноді є цікавим експериментування, щоб побачити якийсь результат, адже він може чомусь навчити, дати щось краще пізнати" gAdds01 (\z _ _ -> z)
      (\i -> V.fromList [(10.0 * fromIntegral i, 0.4588962),(20.0 * fromIntegral i, 0.6853),(30.0 * fromIntegral i, 0.268),
        (40.0 * fromIntegral i, 0.6823),(50.0 * fromIntegral i, 0.53)]) id (\t -> let t1 = fromMaybe 110 (liftInEnku 6 5 t) in 
          V.fromList [(1.0 * t1, 0.4588962),(2 * t1, 0.6853),(3 * t1, 0.268),(4 * t1, 0.6823),(5 * t1, 0.53)])
