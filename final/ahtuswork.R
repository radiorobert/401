# Read in the time spent working data
work <- read.csv("datasets/ahtus/working_time.csv")
work.avg <- aggregate(work$ACT_WORK, list(work$YEAR), FUN=mean)

# Adjusted for recommended weights
work$WGHTWORK <- work$ACT_WORK * work$RECWGHT
recwork.avg <- aggregate(work$WGHTWORK, list(work$YEAR), FUN=mean)

# TODO plot these bad boys
