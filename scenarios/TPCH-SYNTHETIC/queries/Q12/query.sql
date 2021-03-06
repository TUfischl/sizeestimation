--Actual size: 77569
--SQL Server estimate: 689749
SELECT DISTINCT lineitem.l_orderkey, part.p_partkey, lineitem.l_linenumber
FROM orders, customer, lineitem, supplier, part
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND orders.o_totalprice = part.p_retailprice
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND part.p_mfgr = 'Manufacturer#4';


