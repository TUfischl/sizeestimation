
CREATE VIEW V1 AS (
SELECT DISTINCT customer.c_custkey
FROM customer
WHERE customer.c_mktsegment = 'AUTOMOBILE');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT customer.c_custkey, partsupp.ps_suppkey, lineitem.l_linenumber
FROM orders, customer, lineitem, partsupp
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_commitdate
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND orders.o_orderstatus = 'O'
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT DISTINCT lineitem.l_linenumber, customer.c_custkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_commitdate
	 AND orders.o_orderstatus = 'O'
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT customer.c_custkey, orders.o_orderkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_commitdate
	 AND orders.o_orderstatus = 'O'
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT DISTINCT customer.c_custkey
FROM orders, customer, part
WHERE orders.o_custkey = customer.c_custkey
	 AND part.p_retailprice = orders.o_totalprice
	 AND orders.o_orderstatus = 'O'
	 AND customer.c_mktsegment = 'AUTOMOBILE'
	 AND orders.o_orderpriority = '2-HIGH');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;



