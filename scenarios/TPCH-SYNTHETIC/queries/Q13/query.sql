--Actual size: 31706
--SQL Server estimate: 1914750
SELECT DISTINCT lineitem.l_linenumber, orders.o_orderkey, lineitem.l_orderkey
FROM lineitem, part, orders, supplier, customer
WHERE lineitem.l_partkey = part.p_partkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND supplier.s_acctbal = customer.c_acctbal
	 AND orders.o_orderstatus = 'P'
	 AND lineitem.l_returnflag = 'N'
	 AND customer.c_mktsegment = 'BUILDING'
	 AND part.p_mfgr = 'Manufacturer#3';


