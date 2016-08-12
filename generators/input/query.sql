SELECT DISTINCT part.p_partkey AS A0, lineitem.l_orderkey AS A1
FROM lineitem, part, orders
WHERE lineitem.l_partkey=part.p_partkey
	 AND lineitem.l_linestatus=orders.o_orderstatus
	 AND part.p_brand='Brand#22'
	 AND lineitem.l_shipinstruct='DELIVER IN PERSON'
	 AND lineitem.l_returnflag='A'
	 AND lineitem.l_linestatus='F'
	 AND lineitem.l_shipmode='AIR'

