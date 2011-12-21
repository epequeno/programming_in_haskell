-- Define a function 'product' that produces the product of a list
-- of numbers, and show using your definition that product[2,3,4] = 24

-- Prelude comes with a function called product, if you try to name this
-- function product ghci will yell at you saying that you are being 
-- ambiguous (can't tell if you mean Main.product which we wrote or 
-- Prelude.product which is automatically loaded). To adjust we name ours
-- myproduct and we shouldn't have any problems in ghci
 
myproduct[] = 1
myproduct(x:xs) = x * myproduct xs
