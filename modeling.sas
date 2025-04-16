/* STEP 5: MODELING */
PROC LOGISTIC DATA=loan_data DESCENDING;
    CLASS Term Employment_Status Married Risk_Band / PARAM=REF;
    MODEL Defaulted = Age Income Loan_Amount Credit_Score LoanToIncome Term Employment_Status Married Risk_Band;
RUN;
