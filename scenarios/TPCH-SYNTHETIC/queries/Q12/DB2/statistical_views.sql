
CREATE VIEW V1 AS (
SELECT DISTINCT lineitem.l_orderkey
FROM lineitem, supplier, orders
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_shipinstruct = 'COLLECT COD');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_shipinstruct = 'COLLECT COD');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


CREATE VIEW V3 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM lineitem, supplier, orders, customer
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND orders.o_custkey = customer.c_custkey
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_shipinstruct = 'COLLECT COD');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


CREATE VIEW V4 AS (
SELECT DISTINCT lineitem.l_orderkey
FROM lineitem, orders, customer
WHERE orders.o_orderdate = lineitem.l_shipdate
	 AND orders.o_custkey = customer.c_custkey
	 AND lineitem.l_shipmode = 'SHIP'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_shipinstruct = 'COLLECT COD');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM lineitem, supplier
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;



