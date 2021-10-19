##### Perform Upload file to RStudio Cloud #####

Bank_Data <- read.csv("D:\\Data Scientist Masters Program\\Data Science with R\\Live classed\\Code & Notes\\Demo 1_ Identifying Data Structures.csv", stringsAsFactors = FALSE)
summary(Bank_Data)
str(Bank_Data)

unique(Bank_Data$marital)

# transform into new variable
Bank_Data$marital_fact <- as.factor(Bank_Data$marital)
str(Bank_Data)

# transform original variable itself
Bank_Data$marital <- as.factor(Bank_Data$marital)
str(Bank_Data)

# convert back to character
Bank_Data <- read.csv("D:\\Data Scientist Masters Program\\Data Science with R\\Live classed\\Code & Notes\\Demo 1_ Identifying Data Structures.csv", stringsAsFactors = FALSE)
Bank_Data$marital <- as.character(Bank_Data$marital)
str(Bank_Data)

colnames(Bank_Data)[1] <- "age"
# Age
unique(Bank_Data$age)
tbl <- table(Bank_Data$age) #table of frequencies/counts
tbl

View(as.data.frame(tbl)) # beautifies the table


View(as.data.frame(table(Bank_Data$age))) #one liner

# age-groups

Bank_Data$Age_Group <- NA

# below 30 , 30-45, 45-60, 60

for(i in 1:4521){
  
  if(Bank_Data$age[i] <= 30){
    
    Bank_Data$Age_Group[i] <- "below 30"
    
  }else if(Bank_Data$age[i] > 30 && Bank_Data$age[i] <=45){
    
    Bank_Data$Age_Group[i] <- "30 to 45"
    
  }else if(Bank_Data$age[i] > 45 && Bank_Data$age[i] <= 60){
    
    Bank_Data$Age_Group[i] <- "45 to 60"
    
  }else{
    
    Bank_Data$Age_Group[i] <- "60 above"
    
  }
  
}

View(data.frame(Bank_Data$age, Bank_Data$Age_Group))

unique(Bank_Data$Age_Group)
table(Bank_Data$Age_Group)


# marital
table(Bank_Data$marital)

# marital + age_group
table(Bank_Data$Age_Group, Bank_Data$marital)


# marital + housing
table(Bank_Data$loan, Bank_Data$marital)


# write to file
Bank_Data_adhoc <- data.frame(Bank_Data$Age_Group, Bank_Data$housing, Bank_Data$loan)
colnames(Bank_Data_adhoc)

colnames(Bank_Data_adhoc) <- c("Age_Group","Housing_Loan", "Personal_Loan")
colnames(Bank_Data_adhoc)

write.csv(Bank_Data_adhoc, file = "Bank_Data_Loan_Report.csv")

write.table(Bank_Data_adhoc, file = "Bank_Data_Loan_Report.txt")


library("readxl")
library("writexl")

write_xlsx(Bank_Data_adhoc, "Bank_Data_Loan_Report.xlsx")
