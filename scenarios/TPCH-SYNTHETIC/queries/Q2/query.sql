--Actual size: 537
--SQL Server estimate:2570
SELECT DISTINCT partsupp.ps_suppkey, lineitem.l_linenumber, partsupp.ps_partkey
FROM lineitem, partsupp, orders, supplier
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_extendedprice = orders.o_totalprice
	 AND partsupp.ps_suppkey = supplier.s_suppkey
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_linestatus = 'O';


