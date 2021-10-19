# loop exercise


for(i in names){
  print(i)
}

name <- "Tina"

while(name == "Tina"){
  print("tina missing")
  name <- "Anjali"
}

i <- 10
repeat{
  print(i)
  i = i-1
  if(i==0){
    break
  }
}


people_for_rahul <- c("Tina","Daughter","Mother","Neelam","Anjali","Truck-riders","Principal")


for(people in people_for_rahul){
  
  print(people)
  if(people == "Anjali"){
    print("no more people needed")
    break
  }
  
}

