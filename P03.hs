elementAt :: Integral b => [a] -> b -> a
elementAt (x:_) 1 = x
elementAt [] _ = error "Out of Index"
elementAt (_:y) n = elementAt y (n-1)

