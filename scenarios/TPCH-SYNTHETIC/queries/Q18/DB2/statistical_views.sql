
CREATE VIEW V1 AS (
SELECT DISTINCT customer.c_custkey
FROM customer);
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT DISTINCT part.p_partkey
FROM part, lineitem, supplier
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_returnflag = 'R'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT DISTINCT supplier.s_suppkey
FROM lineitem, part, supplier
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_returnflag = 'R'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT part.p_partkey
FROM orders, customer, part
WHERE orders.o_custkey = customer.c_custkey
	 AND part.p_retailprice = orders.o_totalprice
	 AND orders.o_orderstatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT DISTINCT supplier.s_suppkey
FROM lineitem, supplier
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND lineitem.l_returnflag = 'R'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;


