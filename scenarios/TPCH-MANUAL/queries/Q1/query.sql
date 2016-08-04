SELECT DISTINCT PART.P_PARTKEY, SUPPLIER.S_SUPPKEY, NATION.N_NATIONKEY
FROM dbo.ORDERS, dbo.PART, dbo.CUSTOMER, dbo.SUPPLIER, dbo.NATION
WHERE ORDERS.O_CUSTKEY=CUSTOMER.C_CUSTKEY AND 
PART.P_RETAILPRICE=ORDERS.O_TOTALPRICE AND
PART.P_MFGR='Manufacturer#1' AND
NATION.N_NATIONKEY = CUSTOMER.C_NATIONKEY AND
NATION.N_NATIONKEY = SUPPLIER.S_NATIONKEY AND
NATION.N_NAME='ALGERIA' AND
CUSTOMER.C_MKTSEGMENT='AUTOMOBILE' AND
CUSTOMER.C_PHONE LIKE '10-%';