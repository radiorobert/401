# Structure of data (not adjusted to python index)
# SAMPLE   1-4
# IDENT    5-13
# RECWGHT  14-29
# ACT_WORK 30-33
import sys

for i in range(1, len(sys.argv)):
    f = open(sys.argv[i],'r')
    out = open(sys.argv[i][0:sys.argv[i].find('.')] + ".csv", 'a')
    out.write("SAMPLE,IDENT,RECWGHT,ACT_WORK")

    for line in f:
        outline = line[0:4] + ',' + line[4:13] + ',' + line[13:29] + ',' + line[29:]
        out.write(outline)

    f.close()
    out.close()

