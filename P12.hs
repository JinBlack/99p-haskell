data Encoded a = Multiple Int a | Single a deriving Show
decode :: [Encoded a] -> [a]
decode [] = []
decode ((Multiple i x):y) = (replicate i x) ++ decode y
decode ((Single x):y) = x : decode y

