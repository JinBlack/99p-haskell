repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:y) n = (replicate n x) ++ (repli y n)
