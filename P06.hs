isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome z = head z==last z && isPalindrome (init (tail z))
