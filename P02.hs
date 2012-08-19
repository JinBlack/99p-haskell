myButLast :: [a] -> a
myButLast [x] = error "Too few element in the list"
myButLast [x,y] = x
myButLast (_:xs) = myButLast xs
