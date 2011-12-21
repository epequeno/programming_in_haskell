-- What would be the effect of replacing <= by < in the definition of 
-- qsort?
-- Hint: consider the example of qsort[2,2,3,1,1]

my_qsort[] = []
my_qsort(x:xs) = my_qsort(smaller) ++ [x] ++ my_qsort(larger)
                 where
                   smaller = [a | a <- xs, a < x]
                   larger = [b | b <- xs, b > x]

-- The function returns [1,2,3] because the cases were xs is compared to
-- an equal xs (2 = 2 for example) are dropped. The list only returns 
-- values for which the case is specified so 1 < 2 and 2 < 3.
