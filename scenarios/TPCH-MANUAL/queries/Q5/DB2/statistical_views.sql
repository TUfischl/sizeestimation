CREATE VIEW v1 AS (
SELECT DISTINCT A0.o_orderkey,A1.l_linenumber,A1.l_partkey
FROM orders AS A0,lineitem AS A1,part AS A2
WHERE A0.o_orderkey=A1.l_orderkey AND A0.o_totalprice=A2.p_retailprice AND A1.l_partkey=A2.p_partkey AND A1.l_returnflag='N' AND A1.l_linestatus='O' AND A1.l_shipinstruct='TAKE BACK RETURN' AND A1.l_shipmode='MAIL'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT DISTINCT A2.s_suppkey,A0.n_nationkey,A1.c_custkey
FROM nation AS A0,customer AS A1,supplier AS A2
WHERE A0.n_nationkey=A1.c_nationkey AND A0.n_nationkey=A2.s_nationkey AND A1.c_acctbal=A2.s_acctbal
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

