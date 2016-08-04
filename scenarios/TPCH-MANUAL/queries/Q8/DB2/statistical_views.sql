CREATE VIEW v1 AS (
SELECT DISTINCT A0.l_orderkey,A0.l_linenumber
FROM lineitem AS A0
WHERE A0.l_shipdate=A0.l_commitdate AND A0.l_returnflag='N' AND A0.l_linestatus='O'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT DISTINCT A0.o_orderkey,A2.l_linenumber,A1.p_partkey
FROM orders AS A0,part AS A1,lineitem AS A2
WHERE A0.o_orderkey=A2.l_orderkey AND A1.p_partkey=A2.l_partkey AND A1.p_mfgr='Manufacturer#1'
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

