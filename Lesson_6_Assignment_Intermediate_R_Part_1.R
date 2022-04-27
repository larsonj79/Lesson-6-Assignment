# Lesson 6 Assignment - Intermediate R Part 1

# Your assignment is to write the commands instructed in the comments below. To run your
# commands, simply hit Ctrl+Enter (command+return on a MAC) when the cursor is on that 
# command line. You can also type commands directly into the Console below, but you must
# save them in this file for your assignment.


#1. Create four variables, *var1*, *var2*, *var3*, and *var4*, with the values of 3, 10, 
# 24, and 214, respectively.
var1 <- 3
var2 <- 10
var3 <- 24
var4 <- 214

#2. Create four *if()* statements. Each *if()* statement should check whether *var1*, 
# *var2*, *var3*, or *var4*, respectively, is greater than 10. If the variable is greater 
# than 10, a variable var1g10 (or var2g10, var3g10, var4g10, etc.) should be assigned TRUE.
# If not, nothing should happen. 
# (https://campus.datacamp.com/courses/intermediate-r/chapter-1-conditionals-and-control-flow?ex=12)
if(var1 > 10) {
  var1g10 <- TRUE
}
if(var2 > 10) {
  var2g10 <- TRUE
}
if(var3 > 10) {
  var3g10 <- TRUE
}
if(var4 > 10) {
  var4g10 <- TRUE
}

#3. Starting with the *if()* statements from question 2, make the following alteration: if 
# the variable is not greater than 10, the variable var1g10 (or var2g10, var3g10, var4g10,
# etc.) should be assigned FALSE. 
# (https://campus.datacamp.com/courses/intermediate-r/chapter-1-conditionals-and-control-flow?ex=13)
if(var1 > 10) {
  var1g10 <- TRUE
} else {
  var1g10 <- FALSE
}
if(var2 > 10) {
  var2g10 <- TRUE
} else {
  var2g10 <- FALSE
}
if(var3 > 10) {
  var3g10 <- TRUE
} else {
  var3g10 <- FALSE
}
if(var4 > 10) {
  var4g10 <- TRUE
} else {
  var4g10 <- FALSE
}

#4. Make another adjustment to the *if()* statements from question 3. After checking whether 
# the variable is greater than 10, the statement should then check whether the variable 
# equals 10. If the variable equals 10, a new variable var1ge10 (or var2ge10, var3ge10, 
# var4ge10, etc.) should be assigned TRUE. If the variable is not greater than or equal 
# to 10, it should continue to assigned FALSE to var1g10 (or var2g10, var3g10, var4g10, etc.) 
# (https://campus.datacamp.com/courses/intermediate-r/chapter-1-conditionals-and-control-flow?ex=14)
if(var1 > 10) {
  var1g10 <- TRUE
} else if(var1 == 10) {
  var1ge10 <- TRUE 
} else {
  var1g10 <- FALSE
}
if(var2 > 10) {
  var2g10 <- TRUE
} else if(var2 == 10) {
  var2ge10 <- TRUE 
} else {
  var2g10 <- FALSE
}
if(var3 > 10) {
  var3g10 <- TRUE
} else if(var3 == 10) {
  var3ge10 <- TRUE 
} else {
  var3g10 <- FALSE
}
if(var4 > 10) {
  var4g10 <- TRUE
} else if(var4 == 10) {
  var4ge10 <- TRUE 
} else {
  var4g10 <- FALSE
}

## Practice with *for()* loops.
#5. Create a variable called *vec1* that is a vector with four values: 3, 10, 24, 214. 
# Create a variable called *vec2* that contains these four values: 0, 0, 0, 0.
vec1 <- c(3, 10, 24, 214)
vec2 <- c(0, 0, 0, 0)

#6. Use a *for()* loop to create a variable called *vec2* that contains the values: 5, 
# 12, 26, 216. (Loop from 1 to 4, replacing the *vec2* value with the corresponding *vec1*
# value plus 2.) 
#(https://campus.datacamp.com/courses/intermediate-r/chapter-2-loops?ex=7)
for(i in 1:4) {
  vec2[i] <- vec1[i] + 2
}

#7. Add *vec1* and *vec2* and assign the resulting addition to vec3.
vec3 <- vec1 + vec2

## Practice using *for()* loops with embedded *if()* statements.

#8. Create a vector of length 4 called vec1check. Assign the letter 'a' to each entry.
# Create a *for()* loop that checks the values of *vec1* and assigns "Greater than 10", 
# "Equals 10", or "Less than 10" to the corresponding location in vec1check, depending 
# on the value of the *vec1* entry. (In other words, create a *for()* loop that embeds 
# part of your *if()* statement from question 4. Don't forget to change *var1* to *vec1[i]*.) 
# (https://campus.datacamp.com/courses/intermediate-r/chapter-2-loops?ex=10)
vec1check <- c('a', 'a', 'a', 'a')
for(i in 1:4) {
  if(vec1[i] > 10) {
    vec1check[i] <- "Greater than 10"
  } else if(vec1[i] == 10) {
    vec1check[i] <- "Equals 10" 
  } else {
    vec1check[i] <- "Less than 10"
  }
}

#9. Create a variable called *vec4* that is a vector of length 100 containing each 
# integer from 1 to 100.
vec4 <- 1:100

#10. Create a variable called *vec5* that contains each integer from 51 to 150. (Use 
# *vec4* to create *vec5*).
vec5 <- vec4 + 50

#11. Print to the screen the first 10 entries of *vec5*.
vec5[1:10]

# For the next several questions, you need to know a new function, *%%*. This function 
# outputs the remainder of a division problem. Run the code below to see it in action.
10 %% 2
10 %% 3
8 %% 3

#12. Create an *if()* statement that checks whether *var1* is an even number. If it is 
# an even number, assign TRUE to var1even. If it is odd, assign FALSE to var1even.
if(var1 %% 2 == 0) {
  var1even <- TRUE
} else {
  var1even <- FALSE
}

#13. Using a *for()* loop, check whether each entry of *vec4* is even or odd. Store the 
# result in *vec4even*. That is, the first entry of *vec4* is odd, so FALSE should be
# assigned to the first entry of vec4even. (You will have to create vec4even before you
# assign it the appropriate values.)
vec4even <- rep(T, 100)
for(i in 1:100) {
  if(vec4[i] %% 2 != 0) {
    vec4even[i] <- F
  }
}

#14. Print the first 10 values of *vec4even* to the screen.
vec4even[1:10]
