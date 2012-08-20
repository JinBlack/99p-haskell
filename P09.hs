pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:y) = pack' ([x]:(pack y))

pack' :: (Eq a) => [[a]] -> [[a]]
pack' [] = []
pack' [x] = [x]
pack' (xs@(x:_):ys@(y:_):zs)
			| x==y = pack' ((xs++ys):zs)
			| otherwise = xs: pack'(ys:zs)
