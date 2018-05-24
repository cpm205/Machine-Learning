## Five atomic classes of objects: Character, numeric, integer, complex and Logical(true/false)
## THe most basic objects is a vector.
## Vector only contain objects of the same class. But List can contain objects of different classes

x <- vector() ## create an empty vector()

##Explicit Coercion
x <- 0:6
class(x)

##Convert to numeric from integer
as.numeric(x)

##Convert to logical
as.logical(x)


##Convert to character
as.character(x)