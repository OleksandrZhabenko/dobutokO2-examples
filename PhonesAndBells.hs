import DobutokO.Sound
import DobutokO.Sound.Executable
import DobutokO.Sound.Functional
import DobutokO.Sound.Keyboard
import System.Process
import qualified Data.Vector as V 
import EndOfExe (showE)

-- Since dobutokO2 version 0.33.0.0

-- README.markdown is available online at: https://hackage.haskell.org/package/dobutokO2-0.28.0.0/src/README.markdown
main = testSoundGen2G "README.markdown" (\t -> V.fromList [(0.05763181818181818 * t, 0.3598),(1.112159090909091 * t, 0.4588962),(2 * t, 0.6853),(3 * t, 0.268),(4 * t, 0.6823),(5 * t, 0.53)]) 0.4 "Ой у лузі червона калина"
