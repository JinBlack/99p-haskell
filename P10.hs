encode :: (Eq a) => [a] -> [(Int,a)]
encode x = code (foldr pack [] x)
	where	pack x [] = [[x]]
		pack x (y:z) = if x== (head y) then (x:y):z else [x]:y:z 
		code [x] = [(length x,head x)]
		code (x:y) = (length x,head x):(code y)
