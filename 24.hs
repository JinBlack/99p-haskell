import System.Random
diffSelect :: (Bounded a,Random a)  => Int -> a -> IO [a]
diffSelect n x = do
		  gen <- newStdGen
		  return $ take n $ randomRs (minBound,x) gen
