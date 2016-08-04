--Actual size: 2759273
--SQL Server estimate: 3150730
SELECT DISTINCT customer.c_custkey AS A0, lineitem.l_orderkey AS A1, lineitem.l_linenumber AS A2
FROM orders, customer, lineitem, part
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_partkey = part.p_partkey
	 AND customer.c_mktsegment = 'BUILDING'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND lineitem.l_linestatus = 'F'
	 AND orders.o_orderstatus = 'F'
	 AND part.p_brand = 'Brand#54'


