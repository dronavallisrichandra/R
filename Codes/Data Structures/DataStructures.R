###Data Structures

### ==========================  Atomic Vectors ==================== ##
vec1 <- c('a','b','c','d','e','f')

vec1[1]# will return the first element in the vector
vec1[c(2,4)] # will return the second and fourth elements in the vector

vec11 <- c(1, 5, 10, 52)

### ======================= Matrix ========================== ##

vector <- c(1,2,3,4) 
foo <- matrix(vector, nrow=2, ncol=2)

#### Row wise filling by mentioning TRUE 
x <- matrix(1:9, nrow = 3, ncol = 3, byrow=TRUE)

### Column wise filling

y <- matrix(1:9, nrow = 3, ncol = 3, byrow=FALSE)

 x[c(1,2),c(2,3)] # select rows 1 & 2 and columns 2 & 3

### ==================== Arrays ========================= ###

A <- array(1: 24, dim = c(3, 4, 2))
A

vector1 <- c(4,2,1)
vector2 <- c(22,34,76,88,98,65)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
result <- array(c(vector1,vector2),dim = c(3,3,2),
dimnames = list(row.names,column.names,matrix.names))
print(result)

print(result[2,,1])
# Prints the second row of the first matrix of the Array

### ----------------------Factors  -------------------------------- ###

x <- factor(c("male", "female", "female", "male")); 
x

x <- factor(c("male", "female", "female", "male"), levels = c("male", "female")); 
x

x[2] #### Access the second element

### --------------------------- Data Frames ---------------------------- ###
name <- c("Joe","John","Nancy")
sex <- c("M","M","F")
age <- c(27,26,26)


df <- data.frame(name,sex,age)
df

df <- data.frame(
name <- c("Joe","John","Nancy")
sex <- c("M","M","F")
Age <- c(27, 26, 26)
StringsAsFactors = FALSE
)

