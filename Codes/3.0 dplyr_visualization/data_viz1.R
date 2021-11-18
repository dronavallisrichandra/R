######## Data Visualization ###########

mtcars <- datasets::mtcars

bank <- read.csv("D:\\GitHub\\R\\Codes\\3.0 dplyr_visualization\\Demo 1_ Identifying Data Structures.csv")

## barplot

counts <- table(mtcars$am)
counts

barplot(counts)
barplot(table(mtcars$gear), horiz = T)

barplot(table(mtcars$cyl),
        main = "Cylinder Distribution",
        xlab = "No of Cylinders",
        ylab = "Frequency",
        ylim = c(0,16),
        legend = rownames(table(mtcars$cyl)),
        col = c("orange","white","green"))

# stacked barplot
counts <- table(mtcars$gear, mtcars$cyl)
counts

barplot(counts, 
        main = "Cylinder and gear",
        legend = rownames(counts))

# grouped barplot
barplot(counts, 
        main = "Cylinder and gear",
        legend = rownames(counts),
        beside = T)



### Pie Chart ###
characters <- c("Rahul","Aman","Tina","Anjali")
slices <- c(70,10,30,72)

pie(slices, labels = characters, main = "Screen Time")


slices_per <- round((slices/sum(slices))*100, digits = 0)
slices_per

x <- c(1,2,3,4)
y <- c("Kajal","Ayush","Samar","Vivek")

paste(y,x,"%", sep = " ")

per_lab <- paste(characters,slices_per,"%", sep = " ")
per_lab

pie(slices, labels = per_lab, main = "Screen time")


#3d

library(plotrix)
slices <- c(10, 12,4, 16, 8)
pct <- round(slices/sum(slices)*100)

lbls <- paste(c("US", "UK", "Australia","Germany", "France")," ", pct, "%", sep="")
pie3D(slices,labels=lbls,explode=0.0,main="3D Pie Chart")

#HISTOGRAM
mtcars$mpg #miles per gallon data 
hist(mtcars$mpg)
# Colored Histogram with 
##Different Number of Bins
hist(mtcars$mpg, breaks=8,col="darkgreen")


hist(bank$age, main = "Horse Power Histogram")

hist(bank$age, main = "Horse Power Histogram", breaks = 10)

head(bank)
colnames(bank)[1] <- "age"
# density plot
plot(density(bank$age))

# density plot solid
polygon(density(bank$age), col = "yellow", border = "green")


# LIne Plot
classes <- c(1,2,3,4,5)
student_interest <- c(80, 70, 50, 40, 20)

plot(classes, student_interest, type = "b", col = "blue")
plot(classes, student_interest, type = "l", col = "red")
plot(bank$day, bank$duraction)


# boxplot
boxplot(bank$age)

##### heatmap
summary(mtcars)
str(mtcars)

mtcars_mat <- as.matrix(mtcars)
heatmap(as.matrix(mtcars))
heatmap(mtcars_mat, scale = "column")


### wordcloud ###
library(wordcloud)

song <- "dil hai ki manta nahi dil to pagal hai kya mujhe pyar hai pyar kiya to darna kya maine pyar kyu kiya dil me disco dil diwana hai"

song_vec <- strsplit(song, split = " ") # split the song into individual words
song_vec

x <- as.data.frame(table(song_vec))

wordcloud(words = x$song_vec, freq = x$Freq, min.freq = 1)
wordcloud(words = x$song_vec, freq = x$Freq, min.freq = 1, colors = brewer.pal(4,"Set1"))


########## GGPLOT2 ###############
library(ggplot2)

#bar
ggplot(data = mtcars, aes(x = cyl)) + geom_bar(binwidth = 0.5)

#hist
ggplot(data= bank, aes(x = age)) + geom_histogram(bins = 10, color = "black", fill = "blue") +
        scale_y_continuous(name = "frequencies", limits = c(0,1500), breaks = seq(0,1500,100))


# boxplot
car_graph <- ggplot(data = mtcars) 

car_graph + geom_boxplot(aes(y = mpg, group = cyl))

mtcars$cyl_cat <- as.character(mtcars$cyl)

car_graph + geom_boxplot(aes(y = mpg, x = mtcars$cyl_cat))

car_graph + geom_point(aes(x = mpg, y = hp, color = "blue")) + 
        geom_point(aes(x = mpg, y = disp, color = "red"))

car_graph + geom_point(aes(x = mpg, y = hp, color = mtcars$cyl_cat))

# Graphic outputs

jpeg("myplot.jpg")
counts <- table(mtcars$gear)
barplot(counts)
dev.off()
