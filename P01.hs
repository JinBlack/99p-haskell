myLast :: [a] -> a
myLast [] = error "Too few elements in the list"
myLast [x] = x
myLast (_:x) = myLast x
