--Actual size: 1665
--SQL Server estimate:63
SELECT DISTINCT part.p_partkey, partsupp.ps_suppkey, lineitem.l_linenumber
FROM part, lineitem, orders, partsupp
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_orderkey = orders.o_orderkey
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_returnflag = 'R'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';


