-- How should the definition of the function qsort be modified so that
-- it produces a reverse sorted version of the list?

-- You can simply modify the order that the definition is told to concatenate
-- the smaller and larger

-- so instead of 
-- qsort(x:xs) = qsort smaller ++ [x] ++ qsort larger
-- you would just write 
-- qsort(x:xs) = qsort larger ++ [x] ++ qsort smaller


my_qsort[] = []
my_qsort(x:xs) = my_qsort(larger) ++ [x] ++ my_qsort(smaller)
                 where
                   smaller = [a | a <- xs, a <= x]
                   larger = [b | b <- xs, b > x]
