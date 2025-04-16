/* STEP 4: CREATE RISK BAND AND LOAN-TO-INCOME RATIO */
DATA loan_data;
    SET loan_data;
    LoanToIncome = Loan_Amount / Income;

    IF Credit_Score < 580 THEN Risk_Band = "High";
    ELSE IF Credit_Score < 670 THEN Risk_Band = "Medium";
    ELSE Risk_Band = "Low";
RUN;

/* Check Risk_Band distribution */
PROC FREQ DATA=loan_data; 
TABLES Risk_Band; 
RUN;
