# Read in the time spent working data
work <- read.csv("datasets/ahtus/working_time.csv")
work.avg <- aggregate(work$ACT_WORK, list(work$YEAR), FUN=mean)

#===================================
# Adjusted for recommended weights 
#===================================
# make sure to check to remove some 0's.
# if the recweights column is nullifying those entries
# that didn't have sex or age by zeroing them, then we need to remove em
work$WGHTWORK <- work$ACT_WORK * work$RECWGHT
recwork.avg <- aggregate(work$WGHTWORK, list(work$YEAR), FUN=mean)

# TODO plot these bad boys
