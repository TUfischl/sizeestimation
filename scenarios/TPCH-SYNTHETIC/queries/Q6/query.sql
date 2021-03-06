--Actual size: 206129
--SQL Server estimate: 471362
SELECT DISTINCT lineitem.l_linenumber, customer.c_custkey, orders.o_orderkey
FROM orders, customer, lineitem, part
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_partkey = part.p_partkey
	 AND part.p_mfgr = 'Manufacturer#3'
	 AND customer.c_mktsegment = 'BUILDING'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'O';


