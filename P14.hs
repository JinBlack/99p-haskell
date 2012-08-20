dupli :: [a] -> [a]
dupli [] = []
dupli (x:y) =  x:[x]++(dupli y)
