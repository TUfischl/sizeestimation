
CREATE VIEW V1 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM part, lineitem
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;




CREATE VIEW V2 AS (
SELECT DISTINCT lineitem.l_linenumber, orders.o_orderkey
FROM lineitem, partsupp, orders
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;




CREATE VIEW V3 AS (
SELECT DISTINCT partsupp.ps_partkey
FROM part, lineitem, partsupp
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM orders, lineitem
WHERE lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;




CREATE VIEW V5 AS (
SELECT DISTINCT orders.o_orderkey, lineitem.l_linenumber
FROM orders, lineitem, partsupp
WHERE lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;


