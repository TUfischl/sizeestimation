
CREATE VIEW V1 AS (
SELECT DISTINCT L.l_orderkey, O.o_orderkey
FROM lineitem AS L, partsupp AS P, orders AS O
WHERE L.l_partkey = P.ps_partkey
	 AND L.l_suppkey = P.ps_suppkey
	 AND L.l_extendedprice = O.o_totalprice
	 AND L.l_shipmode = 'FOB'
	 AND O.o_orderstatus = 'F'
	 AND O.o_orderpriority = '2-HIGH'
	 AND L.l_shipinstruct = 'TAKE BACK RETURN'
	 AND L.l_returnflag = 'A'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT DISTINCT L.l_linenumber, O.o_orderkey
FROM lineitem AS L, partsupp AS P, orders AS O
WHERE L.l_partkey = P.ps_partkey
	 AND L.l_suppkey = P.ps_suppkey
	 AND L.l_extendedprice = O.o_totalprice
	 AND L.l_shipmode = 'FOB'
	 AND O.o_orderstatus = 'F'
	 AND O.o_orderpriority = '2-HIGH'
	 AND L.l_shipinstruct = 'TAKE BACK RETURN'
	 AND L.l_returnflag = 'A'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


