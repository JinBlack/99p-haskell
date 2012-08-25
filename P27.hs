group :: (Eq a) => [Int] -> [a] -> [[[a]]]
group [] _ = [[]]
group (x:xs) y = [z:zs| z<-combinations x y,zs<-group xs (foldr (\q w -> (if (q `elem` z) then w else q:w)) [] y)]

combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations _ [] = [[]]
combinations n (x:xs)	| n<= (length xs) = [x:ys | ys <- combinations (n-1) xs] ++ (combinations n xs)
			| otherwise = [x:ys | ys <- combinations (n-1) xs]
