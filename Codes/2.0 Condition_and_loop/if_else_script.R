
age <- 13

#age >= 18

if(age >= 18){
  print("Major")
}else{
  print("Minor")
}

print("Minor")
print(age)


age <- 19
gender <- "Male"

if(age >=21 & gender == "Male"){
  print(paste0("Legal"," ",age," ",gender))
}else if(age >= 18 & gender == "Female"){
  print(paste0("Legal"," ",age," ",gender))
}else{
  print(paste0("Illegal Weapon!!!"," ",age," ",gender))
}


if((age >=21 & gender == "Male") | (age >= 18 & gender == "Female")){
  print(paste0("Legal"," ",age," ",gender))
}else{
  print(paste0("Illegal Weapon!!!"," ",age," ",gender))
}


ifelse(age >= 18, "Major", "Minor")



# Switch 

actor <- "Anjali Junior"

switch(actor,
       Rahul={
         "I'm cool!!!"
       }
         ,Tina={
           "I'm already dead!"
         }
       ,Anjali={
         "Rahul is a cheater!"
       })

