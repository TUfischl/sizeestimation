CREATE VIEW v11 AS (
SELECT DISTINCT A0.o_orderkey,A1.l_linenumber
FROM orders AS A0,lineitem AS A1
WHERE A0.o_orderkey=A1.l_orderkey AND A1.l_returnflag='N' AND A1.l_linestatus='O' AND A1.l_shipinstruct='TAKE BACK RETURN' AND A1.l_shipmode='MAIL'
);

ALTER VIEW v11 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v11 WITH DISTRIBUTION;

CREATE VIEW v12 AS (
SELECT DISTINCT A0.l_orderkey,A0.l_linenumber,A0.l_partkey
FROM lineitem AS A0,part AS A1
WHERE A0.l_partkey=A1.p_partkey AND A1.p_mfgr='Manufacturer#1'
);

ALTER VIEW v12 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v12 WITH DISTRIBUTION;

CREATE VIEW v21 AS (
SELECT DISTINCT A0.s_suppkey,A0.s_nationkey
FROM supplier AS A0,nation AS A1
WHERE A0.s_nationkey=A1.n_nationkey AND A1.n_name LIKE 'United%'
);

ALTER VIEW v21 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v21 WITH DISTRIBUTION;

CREATE VIEW v22 AS (
SELECT DISTINCT A0.s_suppkey,A1.c_custkey
FROM supplier AS A0,customer AS A1
A0.s_acctbal=A1.c_acctbal
);

ALTER VIEW v22 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v22 WITH DISTRIBUTION;

