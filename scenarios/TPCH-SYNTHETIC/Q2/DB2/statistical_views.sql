
CREATE VIEW V1 AS (
SELECT partsupp.ps_suppkey, partsupp.ps_partkey
FROM lineitem, partsupp, orders
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_extendedprice = orders.o_totalprice
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT lineitem.l_linenumber
FROM orders, lineitem
WHERE lineitem.l_extendedprice = orders.o_totalprice
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT partsupp.ps_suppkey, lineitem.l_linenumber
FROM lineitem, partsupp, orders
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_extendedprice = orders.o_totalprice
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



