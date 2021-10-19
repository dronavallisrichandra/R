####### --------------------DPLYR PACKAGE --------------------------######

library("dplyr") # load the library

mtcars <- datasets::mtcars
str(mtcars)
summary(mtcars)

# select
mtcars_1 <- select(mtcars, mpg, cyl)

mtcars_1 <- mtcars %>% select(mpg,cyl)

iris <- datasets::iris
select(iris, starts_with("Petal"))
select(iris, ends_with("Width"))
select(iris, contains("etal"))
select(iris, matches(".t."))

iris_petal <- iris %>% select(contains("Petal"))

mtcars_c <- mtcars %>% select(starts_with("c"))

### ------------------------------ Filter --------------------- ###

mtcars_4cyl <- mtcars %>% filter(cyl == 4)
nrow(mtcars_4cyl)

mtcars_4cyl_4gr <- mtcars %>% filter(cyl >= 4 & gear>=4)

mtcars_sorted <- mtcars %>% arrange(cyl, desc(carb))

filter(mtcars, cyl == 8)
filter(mtcars, cyl < 6)

filter(mtcars, cyl < 6 & vs == 1)
filter(mtcars, cyl < 6 | vs == 1)

### --------------------------------  Arrange -------------------------- ##

arrange(mtcars, desc(disp))
arrange(mtcars, cyl, disp)

#------------------------------------- mutate ------------------------------------------------ #
mutate(mtcars, my_custom_disp = disp / 1.0237)


# ---------------------------------- summary ------------------------------------------------ #
mtcars_summary <- mtcars %>% group_by(cyl) %>% summarise(mean(mpg))
mtcars_summ2 <- mtcars %>% group_by(cyl) %>% summarize(n_rows = n(), min_disp= min(disp), max_disp = max(disp), gear_unique = n_distinct(gear))

# group_by(mtcars, cyl)
mtcars_summ3 <- mtcars %>% group_by(cyl, gear) %>%
  summarise(n_rows = n(),
            min_disp= min(disp),
            max_disp = max(disp),
            carb_unique = n_distinct(carb))


mtcars_summ4 <- mtcars_summ3 %>% rename(cylinder = cyl, n_gears = gear)


