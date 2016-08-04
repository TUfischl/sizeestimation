CREATE VIEW v1 AS (
SELECT DISTINCT A0.o_orderkey,A1.l_linenumber
FROM orders AS A0,lineitem AS A1
WHERE A0.o_orderkey=A1.l_orderkey AND A1.l_shipdate=A1.l_commitdate AND A1.l_linestatus='O'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT DISTINCT A1.c_custkey,A0.n_nationkey
FROM nation AS A0,customer AS A1
WHERE A0.n_nationkey=A1.c_nationkey
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

