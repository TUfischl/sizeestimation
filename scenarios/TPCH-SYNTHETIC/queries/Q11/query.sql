--Actual size: 1679060
--SQL Server estimate: 3783810
SELECT DISTINCT partsupp.ps_suppkey AS A0, lineitem.l_orderkey AS A1, partsupp.ps_partkey AS A2
FROM lineitem, orders, partsupp, supplier
WHERE lineitem.l_orderkey = orders.o_orderkey
	 AND lineitem.l_quantity = partsupp.ps_availqty
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_shipmode = 'RAIL'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND lineitem.l_returnflag = 'N'
	 AND orders.o_orderstatus = 'O'


