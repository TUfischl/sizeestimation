CREATE VIEW v1 AS (
SELECT A1.o_orderkey,A0.p_partkey
FROM part AS A0,orders AS A1
WHERE A0.p_retailprice=A1.o_totalprice AND A0.p_mfgr='Manufacturer#1'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT A1.c_custkey,A2.s_suppkey,A0.n_nationkey
FROM nation AS A0,customer AS A1,supplier AS A2
WHERE A0.n_nationkey=A1.c_nationkey AND A0.n_nationkey=A2.s_nationkey AND A0.n_name='ALGERIA' AND A1.c_phone LIKE '10-%' AND A1.c_mktsegment='AUTOMOBILE'
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

