CREATE VIEW v1 AS (
SELECT DISTINCT A0.p_partkey,A1.s_suppkey
FROM part AS A0,supplier AS A1,partsupp AS A2
WHERE A0.p_partkey=A2.ps_partkey AND A1.s_suppkey=A2.ps_suppkey AND A0.p_mfgr='Manufacturer#1' AND A0.p_brand='Brand#13' AND A1.s_acctbal > '2000.0'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT DISTINCT A0.ps_partkey,A0.ps_suppkey
FROM partsupp AS A0
WHERE A0.ps_supplycost > '500.0'
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

