CREATE VIEW v1 AS (
SELECT DISTINCT A0.p_partkey,A1.ps_suppkey
FROM part AS A0,partsupp AS A1
WHERE A0.p_partkey=A1.ps_partkey AND A0.p_mfgr='Manufacturer#1' AND A0.p_brand='Brand#13'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT DISTINCT A1.ps_partkey,A0.s_suppkey
FROM supplier AS A0,partsupp AS A1,nation AS A2
WHERE A0.s_suppkey=A1.ps_suppkey AND A0.s_nationkey=A2.n_nationkey AND A0.s_acctbal > '2000.0' AND A2.n_name LIKE 'UNITED%'
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

