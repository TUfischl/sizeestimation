
CREATE VIEW V1 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM lineitem, part, orders
WHERE lineitem.l_partkey = part.p_partkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_shipmode = 'FOB'
	 AND orders.o_orderpriority = '5-LOW'
	 AND part.p_brand = 'Brand#13'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT customer.c_custkey
FROM customer);
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT DISTINCT orders.o_orderkey, lineitem.l_linenumber
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_shipmode = 'FOB'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT orders.o_orderkey
FROM lineitem, orders
WHERE lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_shipmode = 'FOB'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT DISTINCT customer.c_custkey, lineitem.l_linenumber
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_shipmode = 'FOB'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;



