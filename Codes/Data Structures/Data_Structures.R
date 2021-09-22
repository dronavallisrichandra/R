# vectors

roll_number <- c(1,2,3,4,5)
roll_number <- 1:100
print(roll_number)


roll_number <- 100:1
roll_number

# vector indexing
student_names <- c("Kashneet", "Sumeeta", "Aeronautical")
length(student_names)

student_names[3]
student_names[1]

student_names[2:3]
student_names[-2] 

student_names[c(1,3)]

student_names[c(2,1,3)]


##### matrix #########

vec <- 1:20
vec

mat <- matrix(vec, nrow = 4, ncol = 5)
mat

mat <- matrix(vec, nrow = 4, ncol = 5, byrow = TRUE)
mat

# index single value
mat[3,5]

#index entire row
mat[2,1:5]    #mat[2,c(1,2,3,4,5)]
mat[2,c(1,2,3,4,5)]

mat[2,]

mat[3,1:3] #mat[3,c(1,2,3)]

mat[3,c(1,3,5)]

mat[2:4,3:5]

class(mat)

# data type of matrix
class(mat[1,1])


### create a matrix of 3x7 ( 1 - 21) in row fashion and then index 1st and 3rd row and 4th and 7th column
mat2 <- matrix(1:21, nrow = 3, ncol = 7, byrow = T)
mat2

mat3 <- mat2[c(1,3),c(4,7)]
class(mat3)
mat3[2,2]

#### Array ####
arr <- array(1:12, dim = c(2,3,2))
arr

row.names <- c("row1","row2")
col.names <- c("col1","col2","col3")
mat.names <- c("matrix1","matrix2")

ls <- list(row.names, col.names, mat.names)

arr2 <- array(1:12, dim=c(2,3,2), dimnames = ls)
arr2

# indexing of array
arr2[2,,2]

class(arr2[,2,])


class(arr2[2,3,2])

class(arr2[2,c(1,3),2])

class(arr2[1,c(1,3),])


# Factors
char_vec <- rep(c("small","medium","large","smoll"),3)
char_vec
class(char_vec)
length(char_vec)

fact_vec <- factor(char_vec)
fact_vec
class(fact_vec)
length(fact_vec)

fact_vec1 <- factor(char_vec, level = c("small","medium","large","extra large"))
fact_vec1

fact_vec1[4]


### Data frames ####

name <- c("Sargam", "Karthik", "Aeronautic")
roll_no <- c(1,2,3)
gender <- c("F","M","M")

class(name)
class(gender)

df <- data.frame(name, roll_no, gender)
View(df)

summary(df)
str(df)

df <- data.frame(name, roll_no, gender, stringsAsFactors = F)
str(df)

df[3,2]
df[2,1]

#output all names
df[,1]
df$name

#output 1st and 4th name
df[c(1,4),1]

df$gender


# get gender and name
df[,c(1,3)]
df[,-2]
df[,c(3,1)]
class(df[,c(3,1)])

class(df$name)

data.frame(gender = df$gender,name = df$name)


##### list ########
list1 <- list(name, roll_no, gender)
list1

list1[[2]]
list1[2]

class(list1[[2]])
class(list1[2])

# output the first element of first element of list
# 2 step
name <- list1[[1]]
name[1]

# 1 step
list1[[1]][1]


list2 <- list(name, mat, arr2, df)
list2


### Q: inside list fetch the roll number column from the df data frame in 1 line?
