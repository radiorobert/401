# averages n previous indicies (or look back periods) in the vector v
# if n is greater than index, then returns NA
mov.args <- function(v,n) {
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
