import sys
from sas7bdat import SAS7BDAT

for i in range(1,len(sys.argv)):
    SAS7BDAT(i).to_data_frame().to_csv(i[0:i.find('.')] + ".csv")
