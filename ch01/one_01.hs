-- Give another possible calculation for the result of 
-- double (double 2)

-- Another possible calculation would be lazy evaluation in 
-- which the interpreter does not calculate a value until it 
-- has to.

-- In the examples given in the chapter, the values of double are
-- calculated then applied when the inner or outer double is 
-- called. 

-- It would look something like this:

-- double (double 2)
-- = {applying outer double
-- double 2 + double 2
-- = {applying double 2 twice}
-- 2 + 2 + 2 + 2
-- = {applying +}
-- 4
