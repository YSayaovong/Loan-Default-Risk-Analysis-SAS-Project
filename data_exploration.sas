/* STEP 3: DATA EXPLORATION */
PROC CONTENTS DATA=loan_data; 
RUN;

PROC MEANS DATA=loan_data N MEAN STD MIN MAX; 
VAR Age Income Loan_Amount Credit_Score;
RUN;

PROC FREQ DATA=loan_data; 
TABLES Term Employment_Status Married Defaulted; 
RUN;
