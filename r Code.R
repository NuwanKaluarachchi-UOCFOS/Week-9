#Crash course in R


#running R code
#assign can be done using = or<-

x=10
print(x)
print('Hello world')
y <- 0



#comments
#Single line comments

# multiple
# line
# comments  Select all lines Ctrl+shift+c

# Functions in R

# myfunction = function(arg1, arg2, arg3){
#   statement
#   return(object)
# }


printword = function(){
  print("Hello world")
}
printword()

printword2 = function(){print("Heloooooooo")}
printword2()



#R data Types

#numeric
x=10
print(class(x))

#integer
y=10L
print(class(y))

#complex
z = 10+1i
print(class(z))

#character
s = "Rstudio"
print(class(s))

#boolean
b = TRUE
print(class(b))

#vectors
name= c("Nuwan", "Ruwan", "Pawan","Saman")
print(name)
print(class(name))

#list
name = list(1, c("today","tomorrow"))
print(name)
print(class(name))


#matrices and Arrays
mat = matrix(
  c(1,0,0,0,1,0,0,0,1),
  ncol = 3,
  nrow = 3,
  byrow = TRUE
)
mat


arr = array(
  c(1,0,0,0,1,0,0,0,1),
  dim = c(1,3,3)
)
arr


# Data Frasmes

df = data.frame(
  weight = c(56, 78, 89, 67, 50),
  age = c(18, 21, 25, 22, 75)
  
)
df
df['age']

#Python implies a function
# R it doen't. We can make variable age.A


# Useful commands in R
# list out all the variables
ls() 
#delete variable y
rm(y)
ls()


# Control Statements

#for loop
for(i in 1:10){
  print(i)
}


#while loop
i=1
while (i<=10) {
  print(i)
  i = i+1
}

#if statement

temperature = 30
if(temperature<20){
  print("it's cold")
}else{
  print("It's too warm")
}


#generating numbers
#random numbers
rnorm(20, mean = 0, sd = 1)

#sequences

seq(1, 10, by=2)
seq(length=10, from = 1, by = 3)


#install packages
#pip install numpy

#installing 
install.packages("rmarkdown")

library(car)


#plots

mtcars
head(mtcars)

counts = table(mtcars$gear)
counts
barplot(
  counts,
  main = "Distribution of the car gears",
  xlab = "Number of gears"
)

#box plots
boxplot(
  mpg~cyl,
  data = mtcars,
  main = "car milage data",
  xlab = "number of cylinders",
  ylab = "miles per gallon"
)

#scatter plot
plot(
  mtcars$wt,
  mtcars$mpg,
  main = "Scatter plot",
  xlab = "car weight",
  ylab = "miles per gallon"
)


#modelling

lm_model = lm(mpg~cyl+disp+hp+drat, data=mtcars)
summary(lm_model)
coefficients(lm_model)
confint(lm_model)
fitted(lm_model)


#diagnostic plots

layout(matrix(c(1,2,3,4), 2,2))
plot(lm_model)


#logistic regression

logistic = glm(vs~.,data = mtcars, family=binomial())
summary(logistic)
