myLast :: [a] -> a
myLast [x] = x
myLast (_:x) = myLast x
