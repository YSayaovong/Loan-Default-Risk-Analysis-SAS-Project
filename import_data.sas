PROC IMPORT DATAFILE="/home/u64196636/loan_risk_data.csv"
    OUT=loan_data
    DBMS=CSV
    REPLACE;
    GETNAMES=YES;
RUN;

PROC PRINT DATA=loan_data (OBS=10);
RUN;