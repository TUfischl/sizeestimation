SELECT DISTINCT ORDERS.O_ORDERKEY, PART.P_PARTKEY, NATION.N_NATIONKEY, CUSTOMER.C_CUSTKEY
FROM LINEITEM, ORDERS, PART, SUPPLIER, NATION, CUSTOMER
WHERE  
LINEITEM.L_SUPPKEY = SUPPLIER.S_SUPPKEY AND
LINEITEM.L_ORDERKEY = ORDERS.O_ORDERKEY AND
LINEITEM.L_PARTKEY = PART.P_PARTKEY AND
LINEITEM.L_RETURNFLAG = 'N' AND
LINEITEM.L_LINESTATUS = 'O' AND
LINEITEM.L_SHIPINSTRUCT = 'TAKE BACK RETURN' AND
LINEITEM.L_SHIPMODE = 'MAIL' AND
SUPPLIER.S_NATIONKEY = NATION.N_NATIONKEY AND
SUPPLIER.S_ACCTBAL = CUSTOMER.C_ACCTBAL AND
NATION.N_NAME LIKE 'United%' AND
PART.P_MFGR = 'Manufacturer#1';
