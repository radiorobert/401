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

# v is a vector, p is a percentile (as decimal between 0 1
np.percentile.finder <- function(v,p) {
    sort(v)[length(v) * p]
}

# takes a dataframe, df. Summarizes each column
#       if numeric: print basic stats
#       if not numeric: print so
df.summarize <- function(df) {
    # TODO: make this into sexy recursive function
    for(i in 1:ncol(df)){
        if(is.numeric(df[,i])){
            # print the fancy stats here, make sure is-numeric works for everything in the column

        } else {
            # no fancy stats
            message("Column [fix this] is non-numeric")
            
        }

    }

}
