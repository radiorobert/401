# Robert Blake
# DSCI 401
# Friday Feb 10 2017
# First assignment: simple examples of functions

add4 <- function(a,b,c,d) {
    a + b + c + d
}

# h is height, defines the height from left of screen
# full says if it should start little then get thick and then little again
# *
# **
# ***
triangle <- function(h, full=FALSE) {
    for(i in 1:h){
        message(rep('*', i))
    }

    if(full == TRUE) {

        for(i in (h-1):1){
            message(rep('*', i))
        }
    }
}

# Gives us the answer to quadratic function
quadratic <- function(a,b,c=1) {
    xplus <- ((b * -1) + sqrt((b^2) - (4 * a * c)))/2 * a
    xminus <- ((b * -1) - sqrt((b^2) - (4 * a * c)))/(2 * a)

    c(m,p)
}

# adds all the numbers up
sumrange <- function(a,b) {
    total <- 0
    for(i in a:b) { total <- total + i }
    total
}

# recursive sumrage
# base case: a == b
# move up from the base case, figuring out the function in a way
# that will eventually reduce to the base case
rsum <- function(a,b) {
    if(a == b) { return(a) }
    rsum(a, b - 1) + b
}


# fibonnaci sequence
fib <- function(a,b,i) {
    if(i == 1) { return(a) }
    fib(b, a+b, i-1)

}

# better one
# fib(a,b,1) = a; fib(a,b,2) = b;
# fib(a,b,i) = fib(a,b,i-2) + fib(a,b,i-1)
fib2 <- function(a,b,i) {
    if(i == 1) { return (a) }
    if(i == 2) { return (b) }
    fib2(a,b,i-2) + fib2(a,b, i-1)
}

# build a new list based on a function, but do it recursively
# new vec gets each index of vec with a function performed on it
# f(x + 8)
# [1,2,3,4] --> [9,10,11,12]
# length(vec)

map <- function(vec,f,i) {
    if(i == 0) { return (vec) } 
    vec[i] <- f(vec[i])
    map(vec,f,i-1)
}

# map.rec([],f) = []
# map.rec(v,f) = append(f(v[1], map.rec(v[2:len(v)],f))
map.rec <- function(v,f){
    if(length(v) == 1){ return(f(v[1])) }
    append(f(v[1]), map.rec(v[2:length(v)],f))
}

# examples
# given a vector of elements, get every third number
thirds <- function(v) {
    v[1:length(v) %% 3 == 0]
}

# generic, nth version of the last one
nths <- function(v) {
    v[1:length(v) %% n == 0]
}

# takes vector of numbers, sums 3 numbers at a time in order, then returns new vector
# [1,1,1,2,2,2,3,3,3]
# [3,6,9]
third.sums <- function(v) {
    summed <- c()

    for(i in seq(1,length(v),3)){
        if((i+2) > length(v)) {
            summed <- c(summed, sum(v[i:(i-length(test2) %%3)]))
        } else {
            summed <- c(summed, sum(v[i:(i+2)]))
        }
    }
    return(summed)
}


better.third.sums <- function(v) {
    i <- 1
    output <- c()

    while(i <= length(vec)) {
        inds <- i:min(length(vec), i+2) # this saves us from going over len
        output[length(output) + 1] <- sum(vec[inds])
        i <- 1 + 3
    }
    output
}


divisor <- function(x) {
    test <- 2:(x/2)
    test[x %% test == 0]
}
