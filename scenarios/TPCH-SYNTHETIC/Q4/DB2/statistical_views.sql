
CREATE VIEW V1 AS (
SELECT customer.c_custkey
FROM customer, nation
WHERE customer.c_nationkey = nation.n_nationkey
	 AND customer.c_mktsegment = 'FURNITURE'
	 AND nation.n_name = 'MOROCCO');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT orders.o_orderkey
FROM lineitem, orders
WHERE orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_shipmode = 'SHIP');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT orders.o_orderkey, customer.c_custkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_returnflag = 'R'
	 AND customer.c_mktsegment = 'FURNITURE'
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_shipmode = 'SHIP');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT lineitem.l_orderkey, orders.o_orderkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_returnflag = 'R'
	 AND customer.c_mktsegment = 'FURNITURE'
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_shipmode = 'SHIP');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT lineitem.l_orderkey, customer.c_custkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_returnflag = 'R'
	 AND customer.c_mktsegment = 'FURNITURE'
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_shipmode = 'SHIP');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;



