UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=10 WHERE CUSTOMER_TYPE=0;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=11 WHERE CUSTOMER_TYPE=1;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=12 WHERE CUSTOMER_TYPE=2;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=13 WHERE CUSTOMER_TYPE=3;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=14 WHERE CUSTOMER_TYPE=4;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=15 WHERE CUSTOMER_TYPE=5;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=16 WHERE CUSTOMER_TYPE=6;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=17 WHERE CUSTOMER_TYPE=7;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=18 WHERE CUSTOMER_TYPE=8;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=19 WHERE CUSTOMER_TYPE=9;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=20 WHERE CUSTOMER_TYPE=10;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=21 WHERE CUSTOMER_TYPE=11;
UPDATE MSO_WHOLESALE_INFO_T SET CUSTOMER_TYPE=99 WHERE CUSTOMER_TYPE=12;
update MSO_WHOLESALE_INFO_T set customer_type=22 where customer_type=13;

UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=10 WHERE CUSTOMER_TYPE=0;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=11 WHERE CUSTOMER_TYPE=1;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=12 WHERE CUSTOMER_TYPE=2;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=13 WHERE CUSTOMER_TYPE=3;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=14 WHERE CUSTOMER_TYPE=4;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=15 WHERE CUSTOMER_TYPE=5;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=16 WHERE CUSTOMER_TYPE=6;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=17 WHERE CUSTOMER_TYPE=7;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=18 WHERE CUSTOMER_TYPE=8;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=19 WHERE CUSTOMER_TYPE=9;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=20 WHERE CUSTOMER_TYPE=10;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=21 WHERE CUSTOMER_TYPE=11;
UPDATE MSO_CUSTOMER_CREDENTIAL_T SET CUSTOMER_TYPE=99 WHERE CUSTOMER_TYPE=12;
update MSO_CUSTOMER_CREDENTIAL_T set customer_type=22 where customer_type=13;

UPDATE ACCOUNT_T SET BUSINESS_TYPE=10||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=0;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=11||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=1;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=12||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=2;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=13||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=3;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=14||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=4;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=15||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=5;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=16||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=6;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=17||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=7;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=18||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=8;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=19||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=9;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=20||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=10;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=21||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=11;
UPDATE ACCOUNT_T SET BUSINESS_TYPE=99||MOD(BUSINESS_TYPE,1000000) WHERE FLOOR(BUSINESS_TYPE/1000000)=12;
update ACCOUNT_T set BUSINESS_TYPE=22||MOD(BUSINESS_TYPE,1000000) where FLOOR(BUSINESS_TYPE/1000000)=13;
