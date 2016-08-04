
CREATE VIEW V1 AS (
SELECT lineitem.l_linenumber
FROM part, lineitem
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'R'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT lineitem.l_linenumber
FROM lineitem, orders, part
WHERE lineitem.l_orderkey = orders.o_orderkey
	 AND part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'R'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT part.p_partkey
FROM part, lineitem
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'R'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT part.p_partkey
FROM lineitem, orders, part
WHERE lineitem.l_orderkey = orders.o_orderkey
	 AND part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'R'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT partsupp.ps_suppkey, part.p_partkey
FROM lineitem, partsupp, part
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'R'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;


