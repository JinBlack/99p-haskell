import System.Random
rndSelect :: [a] -> Int -> IO [a]
rndSelect _ 0 = return []
rndSelect x n = do
		gen <- newStdGen
		return $ take n [x !! y | y <- randomRs (0,(length x)-1) gen]
