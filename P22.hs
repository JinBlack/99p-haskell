range :: (Enum a,Ord a) => a -> a -> [a]
range x y	| x < y = x:(range (succ x) y)
		| x==y = [x]
		| x > y = x:(range (pred x) y)
