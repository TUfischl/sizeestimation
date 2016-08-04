
CREATE VIEW V1 AS (
SELECT customer.c_custkey
FROM customer
WHERE customer.c_mktsegment = 'BUILDING');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT orders.o_orderkey
FROM lineitem, part, orders
WHERE lineitem.l_partkey = part.p_partkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND part.p_mfgr = 'Manufacturer#3'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'O');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT lineitem.l_linenumber
FROM lineitem, part, orders
WHERE lineitem.l_partkey = part.p_partkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND part.p_mfgr = 'Manufacturer#3'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'O');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT customer.c_custkey, orders.o_orderkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND customer.c_mktsegment = 'BUILDING'
	 AND orders.o_orderpriority = '5-LOW'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'O');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;


