--Actual size: 266
--SQL Server estimate: 2137
SELECT DISTINCT orders.o_orderkey AS A0, lineitem.l_orderkey AS A1, lineitem.l_linenumber AS A2
FROM lineitem, partsupp, orders, supplier
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_extendedprice = orders.o_totalprice
	 AND partsupp.ps_suppkey = supplier.s_suppkey
	 AND lineitem.l_shipmode = 'FOB'
	 AND orders.o_orderstatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A'


