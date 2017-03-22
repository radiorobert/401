# Robert Blake

##
### 1 ###
##

# averages n previous indicies (or look back periods) in the vector v
# if n is greater than index, then returns NA
mov.avg <- function(v,n) {
    out <- c()
    for(i in 1:length(v)){
        if(i <= n){
            out <- c(out,NA)
        } else {
            out <- c(out,mean(v[(i-n):(i-1)]))
        }
    }
    out
}

mov.avg.summary <- function(v,n) {

}

##
### 2 ###
##

# v is a vector, p is a percentile (as decimal between 0 1
np.percentile.finder <- function(v,p) {
    sort(v)[length(v) * p]
}

##
### 3 ###
##

# takes a dataframe, df. Summarizes each column
#       if numeric: print basic stats
#       if not numeric: print so
df.summarize <- function(df) {
    for(i in 1:ncol(df)){
        if(is.numeric(df[,i])){
            # print the fancy stats here, make sure is-numeric works for everything in the column
            message(sprintf("Column %d\n\tmean = %f\n\tmin = %f\n\tmax = %f\n\tsd = %f",
                    i,mean(df[,i]), min(df[,i]), max(df[,i]), sd(df[,i])))
        } else {
            # no fancy stats
            message(sprintf("Column %d is non-numeric",i))
        }
    }
}
