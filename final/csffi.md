# CSFII Notes
#### Variable Codes for 1985-1986 set
|Code|file|meaning|
|----|----|-------|
|H2M_DOL1|rt10|Money spent at food/drink stores|
|H2M_PER1|rt10|Time spent at food/drink stores|
|A2M_DOL1|rt10|Money spent at away from home food/drink stores|
|A2M_PER1|rt10|Time spent at away from home food/drink stores|
|MINC1|rt10|Total household income last month|
|HU_AMT[1-6]|rt10|Usual amount spent per week on food from home|
|AU_AMT[1-6]|rt10|Usual amount spent per week on food away from home|
|HOMENUM|rt20|Number of meals per week from household food supplies|
|AWAYNUM|rt20|Number of meals per week away from home|
|SEX|rt20|sex of respondent|
|AGE|rt20|age|
|BMI|rt20|Body mass index|

#### Variables for 1989-1991 set
_Record info starts on pg 267 of the_ [documentation](/home/robertblake/Projects/401/final/datasets/csfii/csfii8991_documentation.pdf)

|Variable|record type|meaning|
|--------|-------|------------|
|ID|15|use this instead of HHID because we're using multiyear|
|SHOP_FRQ|15|(8 don't know, 9 didnt answer) how many times does one do major shopping?  1 more than once a week, 2 once a week, 3 once every two weeks, 4 once a month or less, 5 never |
|SHOP_KND|15|What kind of store? 1 = supermarket, 2 = small store, 3 = someplace else|
|AMT_GRO|15|How much was spent on groceries during the last 3 months? <ul><li>0 - 996 dollars</li><li>997 = $997 or more</li><li>998 don't know, 999 is no ans</li></ul>|
|AMT_GROU|15|Time unit for AMT_GRO <ul><li>0 = None</li><li>1 = per week</li><li>2 = per month</li><li>8 don't know, 9 no ans</li></ul>|
|AMT_AWY|15|See AMT_GRO, but this is for food bought and eaten away from home|
|AMT_AWYU|15|See AMT_GROU, but this is for food bought and eaten away from home|
|AGE|20|Age|
|SEX|20|1 = Male<br/>2 = Female|
|OVERWGT|20|DO you consider yourself to be overweight, under, etc.? No data for 1989 <br/>1 = Over<br/>2 = Under<br/>3 = About right<br/>8 = don't know, 9 = no answer|
|BMI|25|BMI 999.99 is indeterminable
|WITHWHOM|30|With whome did you eat/drink item with?|
|HOMEFOOD|30|Where was item eaten?<br/>1 = Eaten at home<br/>2 = Brought into home, eaten away from home<br/>3 =never brought into house|
|FASTFOOD|30|Home items from fast-food places or meals on wheels?<br/>1 = Item from fast-food/carryout place<br/>2 = item from meals on wheels<br/>3 = Item from some other place|
|AWAYSRCE|30|Source of this food item if it was never brought into the home?|
|DOCTOR[1-8]|50|Doctor's orders|
|TVHRS|50|Tv stuff


##### That's garbage below kinda
\* = not in record type 15  
\# = not in record type 50  
\+ = On record type 50 this field refers to DHKS respondent

|Variable|columns|record type|meaning|
|--------|-------|-----------|------------|
|RT|1-2||Record type|
|YEAR|3||Year of survey|
|SAMPLE|4||Sample
|ID|3-9||Household identification number (includes year & sample)
|R_NUM|10-11|\*\+|Line number (from flap)
|STRATUM|12-14||Stratum identifier
|PSU|15||PSU replicate
|AREASEG|16-18||Area segment
|HOUSUNIT|19-21||Housing unit
|QUARTER|22||Quarter of annual sample
|GEOG|23||Geographic division
|REGION|24||Region
|URB|25||Urbanization (Current designation)
|HHSZ_TOT|26-27||Household size including roomers, ...
|HHSZ|28-29||Household size excluding roomers, ...
|INCOME|30-36||Household income for the previous year
|INCCODE|37-38||Categorized household income
|PCTPOV|39-42||Income as percentage of poverty threshold
|INC_REP|43||Actual annual income reported?
|IMPFLAG|44||Imputed annual income flag
|H_RCVFS|45||Is household receiving food stamps at present?
|DHKHH|46|\#|Did household complete DHKS
|CHILDREN|47||Any household members < 18 years?
|HEADSTAT|48||Head of household status
|R_RCVFS|51|\*\+|Is this person receiving food stamps?
|R_MLPL|52|\*\+|Is this person the main meal planner?
|R_HRESP|53|\*\+|Is this person the household respondent?
|R_DHK|54|\*\#|Is this person the DHKS respondent?
|R_FH|55|\*\+|Is this person the female head of household?
|R_RELH|56-57|\*\+|Relationship of person to the head
|AGEM|58-59|\*\#|Age in months
|AGE|60-62|\*\+|Age in years
|SEX|63|\*\+|Sex
|PL_STAT|64|\*\+|Pregnant/lactating status
|BF_STAT|65|\*\#|Breast-feeding infant status
|RACE|66|\*\+|Race
|ORIGIN|67|\*\+|Hispanic origin or descent
|NUMDAYS|68|\*\+|Number of days of complete intake records
|COMP1|69|\*\+|Complete intake for day 1
|COMP2|70|\*\+|Complete intake for day 2
|COMP3|71|\*\+|Complete intake for day 3 

#### Variables for 1994-1996,1998 set
|Record Type|Info|
|-----------|----|
|15|Households|
|20|Household Members|
|25|Sample Persons|
|30|Food Items (Nutrients)|
|35|Food Groups|
|40|Nutrients|
|50|DHKS|

|RT15 Codes|meaning|
|----|-------|
|INCOME|Annual Income total|
|SHP_AWAY|Amount shopping away from home: week/month|
|SHP_FAST|Amount fast food: week/month|
|SHP_GROC|Amount grocery shopping: week/month|
|YEAR||

|RT20 Codes|meaning|
|----------|-------|
|AGE|years alive|
|SEX||

|RT25 Codes|meaning|
|----------|-------|
|AGE|
|BMI_SP|Body mass index|
|D[1-2]-TV|Hours of TV that day|
|DOCTOR[1-7]|Doctor told [diabetes, high bloodpressure, heart disease, cancer, osteoporosis, high cholesterol, stroke]|


## NHANES
### 1999-2000
Demographic File  

|Vari|Meaning|
|----|-------|
|SEQN|sequence id of respondent|
|RIAGENDER|gender|
|RIDAGEYR|Age at screening|
|IDHHINC|Anual household income|

Examination File  

|Vari|Meaning|file|
|----|-------|----|
|SEQN|id||
|BMXBMI|Body mass index|BMX


### 2001-2002
|Food Variable|Meaning|file|
|----|-------|----|
|DRD040Z|Was this food eaten at home?|DRXIFF_B


|Demographics Variable|Meaning|file|
|----|-------|----|
|SEQN|id|CDEMO_AD|
|RIAGENDR|gender|CDEMO_AD|
|RIDAGEYR|year|CDEMO_AD|
|IDHHINC|Anual household income|CDEMO_AD
