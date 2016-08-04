
CREATE VIEW V1 AS (
SELECT lineitem.l_orderkey
FROM part, lineitem
WHERE part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipinstruct = 'NONE');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT part.p_partkey, lineitem.l_orderkey
FROM lineitem, partsupp, part
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipinstruct = 'NONE');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


CREATE VIEW V3 AS (
SELECT part.p_partkey, partsupp.ps_partkey
FROM lineitem, partsupp, part
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipinstruct = 'NONE');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


CREATE VIEW V4 AS (
SELECT partsupp.ps_partkey, lineitem.l_orderkey
FROM lineitem, partsupp, part
WHERE lineitem.l_partkey = partsupp.ps_partkey
	 AND lineitem.l_suppkey = partsupp.ps_suppkey
	 AND part.p_retailprice = lineitem.l_extendedprice
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND part.p_mfgr = 'Manufacturer#4'
	 AND lineitem.l_shipinstruct = 'NONE');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;


