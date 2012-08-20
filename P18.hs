slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice (x:xs) i f | i>0 && i<f = (slice xs (i-1) (f-1))
		 | i<=0 && i<f = x:(slice xs 0 (f-1))
		 | i==f = []
		 | i>f = error "the end parameters in smaller than init"

