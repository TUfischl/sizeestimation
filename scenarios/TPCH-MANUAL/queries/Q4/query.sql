SELECT DISTINCT PART.P_PARTKEY
FROM ORDERS, PART, CUSTOMER
WHERE ORDERS.O_CUSTKEY=CUSTOMER.C_CUSTKEY AND 
PART.P_RETAILPRICE=ORDERS.O_TOTALPRICE AND
PART.P_MFGR='Manufacturer#1' AND
CUSTOMER.C_MKTSEGMENT='AUTOMOBILE' AND
CUSTOMER.C_PHONE LIKE '10-%';