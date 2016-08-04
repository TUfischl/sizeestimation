
CREATE VIEW V1 AS (
SELECT DISTINCT partsupp.ps_partkey, part.p_partkey
FROM lineitem, part, partsupp
WHERE lineitem.l_partkey = part.p_partkey
	 AND part.p_retailprice = partsupp.ps_supplycost
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R'
	 AND part.p_mfgr = 'Manufacturer#5');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;




CREATE VIEW V2 AS (
SELECT DISTINCT lineitem.l_orderkey
FROM lineitem, part
WHERE lineitem.l_partkey = part.p_partkey
	 AND lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R'
	 AND part.p_mfgr = 'Manufacturer#5');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;




CREATE VIEW V3 AS (
SELECT DISTINCT part.p_partkey
FROM part, partsupp
WHERE part.p_retailprice = partsupp.ps_supplycost
	 AND part.p_mfgr = 'Manufacturer#5');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;




CREATE VIEW V4 AS (
SELECT DISTINCT orders.o_orderkey
FROM orders, customer
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderpriority = '1-URGENT');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;




CREATE VIEW V5 AS (
SELECT DISTINCT part.p_partkey
FROM part
WHERE part.p_mfgr = 'Manufacturer#5');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;




CREATE VIEW V6 AS (
SELECT DISTINCT partsupp.ps_partkey
FROM part, partsupp
WHERE part.p_retailprice = partsupp.ps_supplycost
	 AND part.p_mfgr = 'Manufacturer#5');
	 
ALTER VIEW V6 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V6 WITH DISTRIBUTION;



