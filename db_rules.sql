CREATE TABLE IPSHARE.YZ_TEST_LHS (
	RULE_ID INTEGER,
	PRODUCT_ID INTEGER
)

INSERT INTO IPSHARE.YZ_TEST_LHS
VALUES(1, 2);

INSERT INTO IPSHARE.YZ_TEST_LHS
VALUES(1, 7);


SELECT * FROM IPSHARE.YZ_TEST_LHS


-- RULES NOT SATISFIED 
SELECT DISTINCT RULE_ID  FROM IPSHARE.YZ_TEST_LHS
WHERE  PRODUCT_ID NOT IN (2,7,9)

SELECT DISTINCT RULE_ID  FROM IPSHARE.YZ_TEST_LHS
WHERE  NOT PRODUCT_ID IN (1,7,9)


-- TO SEE THE BASKET CONTAINS ANY RULES 
SELECT DISTINCT RULE_ID FROM IPSHARE.YZ_TEST_LHS
MINUS
SELECT DISTINCT RULE_ID  FROM IPSHARE.YZ_TEST_LHS
WHERE  PRODUCT_ID NOT IN (2,7,9)
