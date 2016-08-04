CREATE VIEW v1 AS (
SELECT DISTINCT A0.l_orderkey,A0.l_linenumber,A0.l_partkey
FROM lineitem AS A0,part AS A1
WHERE A0.l_partkey=A1.p_partkey AND A0.l_returnflag='N' AND A0.l_linestatus='O' AND A0.l_shipinstruct='TAKE BACK RETURN' AND A0.l_shipmode='MAIL'
);

ALTER VIEW v1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v1 WITH DISTRIBUTION;

CREATE VIEW v2 AS (
SELECT DISTINCT A0.o_orderkey,A1.p_partkey
FROM orders AS A0,part AS A1
WHERE A0.o_totalprice=A1.p_retailprice
);

ALTER VIEW v2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE v2 WITH DISTRIBUTION;

