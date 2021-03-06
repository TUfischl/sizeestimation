SELECT DISTINCT LINEITEM.L_ORDERKEY, LINEITEM.L_LINENUMBER, ORDERS.O_ORDERKEY, PART.P_PARTKEY
FROM LINEITEM, ORDERS, PART
WHERE  
LINEITEM.L_PARTKEY = PART.P_PARTKEY AND
LINEITEM.L_RETURNFLAG = 'N' AND
LINEITEM.L_LINESTATUS = 'O' AND
LINEITEM.L_SHIPINSTRUCT = 'TAKE BACK RETURN' AND
LINEITEM.L_SHIPMODE = 'MAIL' AND
ORDERS.O_TOTALPRICE = PART.P_RETAILPRICE;

