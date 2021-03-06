--Actual size: 1327
--SQL Server estimate: 738
SELECT DISTINCT part.p_partkey, supplier.s_suppkey, customer.c_custkey
FROM part, lineitem, supplier, orders, customer
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND part.p_retailprice = orders.o_totalprice
	 AND orders.o_custkey = customer.c_custkey
	 AND orders.o_orderstatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_returnflag = 'R'
	 AND lineitem.l_linestatus = 'F';


