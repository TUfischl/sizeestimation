
CREATE VIEW V1 AS (
SELECT DISTINCT supplier.s_suppkey
FROM part, lineitem, supplier
WHERE lineitem.l_extendedprice = part.p_retailprice
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND part.p_brand = 'Brand#52'
	 AND lineitem.l_shipmode = 'REG AIR');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT lineitem.l_orderkey
FROM part, lineitem, supplier
WHERE lineitem.l_extendedprice = part.p_retailprice
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND part.p_brand = 'Brand#52'
	 AND lineitem.l_shipmode = 'REG AIR');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT DISTINCT orders.o_orderkey, lineitem.l_orderkey
FROM orders, customer, lineitem, supplier
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipmode = 'REG AIR');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT orders.o_orderkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipmode = 'REG AIR');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;


CREATE VIEW V5 AS (
SELECT DISTINCT supplier.s_suppkey, lineitem.l_orderkey
FROM orders, customer, lineitem, supplier
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_shipdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipmode = 'REG AIR');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;


