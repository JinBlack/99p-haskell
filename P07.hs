data NestedList a = Elem a | List [NestedList a] deriving (Show, Read, Eq, Ord)
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List []) = []
flatten (List [x]) = flatten x
flatten (List (x:y)) = (flatten x) ++ (flatten (List y))
