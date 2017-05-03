import sys
from sas7bdat import SAS7BDAT

for i in range(1,len(sys.argv)):
    f = SAS7BDAT(sys.argv[i])
    f = f.to_data_frame()
    f.to_csv((sys.argv[i][0:sys.argv[i].find('.')] + ".csv"))
