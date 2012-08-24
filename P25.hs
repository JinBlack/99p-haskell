import System.Random
rndPermu :: [a] -> IO [a]
rndPermu [] = return []
rndPermu x = do
		gen <- newStdGen
		let (num,newgen) = randomR(0,(length x)-1) gen
		xr <- rndPermu ((take num x)++(drop (num+1) x))
		return $(x !! num):xr
