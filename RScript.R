help(mean)
?mean
help.search('mean')
??mean
example(rnorm)

demo()
demo(package = .packages(all.available = TRUE))
demo(package="graphics")
demo(image)

vignette()
vignette(package="parallel")
vignette(package = .packages(all.available = TRUE))
vignette("rotated",package="grid")
RSiteSearch("arithmetic mean")

demo()
demo(package = .packages(all.avaliable = TRUE))
demo(package = 'graphics')
demo(graphics)

help(graphics)

vignette()
vignette(package='Matrix')
vignette('Comparisons')
assign('marks',30)
marks

my.environment <- new.env()
assign("x",10,my.environment)
my.environment[["x"]] <- 10
my.environment$x <- 10

marks.score <- 300 # creating marks.score in Global Environment
get("marks.score",globalenv())

custom.environment <- new.env() #creating a variable in custoim environment
parent.env(custom.environment)

assign("match.score",320,custom.environment)
custom.environment[["match.score"]] <- 320
custom.environment$match.score <- 320

get("match.score",custom.environment) # to get a variable of custom environment
custom.environment[["match.score"]] # Another option to get
custom.environment$match.score # Another Option

10 + 5
10 - 5
10 * 5
10 ^ 5
format(10 ^ 5,scientific = FALSE)
10 / 5
10 ** 5
10 %% 5
10 %/% 5 

# Mathematical Functions
exp(5)
10 exp(5)

exp(4)
abs(-0)
abs(6)
log(2)
log 2
;og2
log2
log(2,base = 1)
exp(1)
  
log(2,base=exp(1))
log(2,base=10)
factorial(5)
pi
options()
options(digits=10)
pi
options(digits=7)

1 / 0
-1/0
Inf + 5
Inf - 5
Inf * 5
Inf / 5

#Infinity
is.finite(1 / 0)
is.finite(10 / 3)
is.infinite(1 / 0)
is.infinte(3 / 2)
is.infinite(3 / 2)

#Undefined(Not a number)
Inf / Inf 
is.nan(Inf / Inf)

#Missing Values
NA + 5
NA - 7
is.nan(NA+3)
is.na(NA)
is.na(NA + 3)

# NaN can be a missing value but not all missing value can be NaN.
is.na(NaN)
is.nan(NA)

# Logical Operators
5 > 2
5 >= 2
5 < 2
5 <= 2
5 == 2
5 != 2

"b" > "a" 
!(TRUE)
!(FALSE)
TRUE | FALSE 
TRUE & FALSE

TRUE | FALSE
TRUE & FALSE

#Using Combine Function  
student.marks <- c(10,20,30,40)
student.marks

# Vectorized Operations - I 
# Input single vector output - scalar of vector length 1 
mean(student.marks)

# Vectorized Operations - II
# Input single vector output single vector (of length 3 means 3 elements in the vector)
student.marks <- student.marks + 5
student.marks

#Vectorized Operations - III
# Input Multiple vector output single vector
student.english.marks <- c(20,30,40,50)
student.math.marks <- c(30,40,50,60)
student.total.marks <- student.english.marks + student.math.marks
student.total.marks

# Atomic Vector (or) Vector

# 1.Character Vector
student.names <- c("Raj","Rekha","David","Devi")
student.names
str(student.names)
is.character(student.names)

#2.Numeric vector
student.weights <- c(60.7,56.8,45.7,65.2)
str(student.weights)
is.numeric(student.weights)
is.character(student.weights)

#3.Integer Vector
student.physics.marks <- c(67L,87L,98L,76L)
str(student.physics.marks)
is.integer(student.physics.marks)

# An integer is also a numeric but a numeric cannot be integer
is.numeric(student.physics.marks)
is.integer(student.weights)

is.numeric(12)

#4.Logical Vector
students.interest.physics <- c(TRUE,T,FALSE,F)
str(students.interest.physics)
is.logical(students.interest.physics)

#5.Complex vector
complex.vector <- c(2+2i,4+7i,-9+5i,2+7i)
str(complex.vector)
is.complex(complex.vector)

#Using vector() function to create atomic vectors
vector("character",length = 3)
vector("numeric",length = 3)
vector("logical",length =3)
vector("integer",length = 3)
vector("complex",length = 3)

# Operations on atomic vectors
student.physics.marks >= 75 
student.total.marks <- student.english.marks + student.physics.marks + student.math.marks 
student.total.mark
student.names[1]
student.names[2]
student.names[1:3]
student.names[c(T,T,F,F)]
student.names[student.physics.marks >=75]

# "Coercion"
# Implicit Coercion
student.weights <- c(45.5,65.5,78.5,"56.7")
student.weights
str(student.weights)

#Explicit Coercion
#Sensible Coercion
student.physics.marks <- c(70,75,80,85)
as.numeric(student.physics.marks >= 75)
as.character(student.physics.marks)
as.numeric(student.physics.marks)
as.character(student.weights)

#Non sensible Coercions
as.numeric(student.names)

#Factors

student.genders <- c("male","male","female","female")
student.genders
student.genders <- c(2L,2L,1L,1L)
student.genders

student.genders <- factor(c("male","male","female","female"))
student.genders
as.numeric(student.genders)

student.blood.groups <- factor(c("AB","B","O","A"),levels = c("A","B","AB","O"))
student.blood.groups
as.numeric(student.blood.groups)
str(student.blood.groups)

student.genders <- factor(c("mae","male","female","female"),levels = c("female","male"))
student.genders
as.numeric(student.genders)
str(student.genders)

#To get the details of 1st student,we need to type 5 separate codes
student.genders[1]
student.genders[2]
student.geders[3]
student.genders[3]

student.names[1]
student.marks[1]
student.blood.groups[1]
student.weights[1]
student.physics.marks[1]
student.total.marks[1]


# creating list
student.names <- c("Raj","Rahul","Priya","Poonam")
student.weights <- c(60.5,73.5,45.2,46.7)
student.genders <- factor(c("Male","Male","Female","Female"))
student.physics.marks <- c(70L,75L,80L,85L)
student.chemistry.marks <- c(60L,70L,85L,70L)

student1 <- list(student.names[1],student.weights[1],student.genders[1],student.physics.marks[1],student.chemistry.marks[1])

str(student1)
student1

#creating names for the list
student1 <- list(name = student.names[1],
                 weight = student.weights[1],
                 Gender = student.genders[1],
                 Physics.Marks = student.physics.marks[1],
                 Chemistry.Marks = student.chemistry.marks[1])

str(student1)
student1

#so far we created atomic classes in list
#creating vectors in list
as.numeric(student.chemistry.marks)

student1 <- list(name = student.names[1],
                 weight = student.weights[1],
                 Gender = student.genders[1],
                 Marks = c(student.physics.marks[1],student.chemistry.marks[1]))

str(student1)
student.chemistry.marks
student1
str(student1)

c(student.physics.marks,student.chemistry.marks)
class(student.chemistry.marks)
as.numeric(student.chemistry.marks)
class(student.chemistry.marks)
is.numeric(student.chemistry.marks)
class(student.chemistry.marks)

#subsetting a list
student.names <- c("Raj","Rahul","Priya","Poonam")
student.weights <- c(60.5,73.5,45.2,46.7)
student.genders <- factor(c("Male","Male","Female","Female"))
student.physics.marks <- c(70L,75L,80L,85L)
student.chemistry.marks <- c(60L,70L,85L,70L)

student1 <- list(name = student.names[1],
                 weight = student.weights[1],
                 Gender = student.genders[1],
                 Physics.Marks = student.physics.marks[1],
                 Chemistry.Marks = student.chemistry.marks[1])

student1[1]
typeof(student1[1]) # single bracket returns the type of element ...here its the list

student1[[1]]
typeof(student1[[1]]) # Double bracket returns the type of object itself 

student1[1:3]
typeof(student1[1:3])

#Using name for subsetting
student1$gender
student1$weight
student1["weight"]
student1[c("Physics.Marks","Chemistry.Marks")]
avaliable.packages()
a <- available.packages()
head(rownames(a),3)
head(rownames(a),4)

source("http://bioconductor.org/biocLite.R")
library(slidify)

library(ggplot2)
search()
find.package("devtools")
install.packages("sos")
library(sos)
find.package("sos")

help(mean)
demo(mean)

RSiteSearch("arithmetic mean")

RSiteSearch("arithmetic mean")

install.packages("KernSmooth")
library(KernSmooth)


##Secondary Reading

