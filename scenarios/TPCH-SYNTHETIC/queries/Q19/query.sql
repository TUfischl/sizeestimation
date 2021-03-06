--Actual size: 1838368
--SQL Server estimate: 4094570
SELECT DISTINCT part.p_partkey, orders.o_orderkey, lineitem.l_orderkey, partsupp.ps_partkey
FROM lineitem, part, orders, customer, partsupp
WHERE lineitem.l_partkey = part.p_partkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND orders.o_custkey = customer.c_custkey
	 AND part.p_retailprice = partsupp.ps_supplycost
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R'
	 AND part.p_mfgr = 'Manufacturer#5'
	 AND orders.o_orderpriority = '1-URGENT';


