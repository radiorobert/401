# Structure of data (not adjusted to python index)
# SAMPLE   1-4
# IDENT    5-13
# RECWGHT  14-29
# ACT_WORK 30-33
import sys

if(sys.argv[2] == "--work"):
    f = open(sys.argv[1],'r')
    out = open(sys.argv[1][0:sys.argv[1].find('.')] + ".csv", 'a')
    out.write("SAMPLE,IDENT,RECWGHT,ACT_WORK")

    for line in f:
        outline = line[0:4] + ',' + line[4:13] + ',' + line[13:29] + ',' + line[29:]
        out.write(outline)

    f.close()
    out.close()

if(sys.argv[2] == "--act"):
    f = open(sys.argv[1],'r')
    out = open(sys.argv[1][0:sys.argv[1].find('.')] + ".csv", 'a')
    out.write("CASEID,YEAR,PERNUM,LINENO,PERSONWGHT,ACTIVITY,DURATION\n")

    for line in f:
        outline = line[0:14] + ',' + line[14:19] + ',' + line[19:21] + ',' + line[21:24] \
                + ',' + line[24:41] + ',' + line[41:47] + ',' + line[47:]
        out.write(outline)

    f.close()
    out.close()



