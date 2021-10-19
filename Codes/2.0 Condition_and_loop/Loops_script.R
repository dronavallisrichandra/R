
# For loop

roll_numbers <- 1:100
roll_numbers

names <- c("Nishant","Dinesh","aeronautical","Jay")
names

for(val in names){
  print(val)
}

for(val in roll_numbers){
  print(val)
}

for(val in roll_numbers){
  
  if(val %% 3 == 0){
    print(val)
  }
}


# while: 10..... 5

val <- 10

while(val >= 5 ){
  print(val)
  val <- val-1
}


age<-30
while (age<=35){
  print(age)
  age<-age+1
}



#rahul_people <- c("Tina","Anjali","Mom", "Neelam", "Aman")

j <- 5

repeat{
  print(j)
  j <- j + 2
  
  if(j==19){
    break
  }
}
