
CREATE VIEW V1 AS (
SELECT DISTINCT L.l_linenumber
FROM lineitem AS L, part AS P, orders AS O
WHERE L.l_partkey = P.p_partkey
	 AND O.o_orderdate = L.l_shipdate
	 AND O.o_orderpriority = '4-NOT SPECIFIED'
	 AND L.l_linestatus = 'F'
	 AND O.o_orderstatus = 'F'
	 AND P.p_brand = 'Brand#54'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT DISTINCT L.l_orderkey
FROM lineitem AS L, part AS P, orders AS O
WHERE L.l_partkey = P.p_partkey
	 AND O.o_orderdate = L.l_shipdate
	 AND O.o_orderpriority = '4-NOT SPECIFIED'
	 AND L.l_linestatus = 'F'
	 AND O.o_orderstatus = 'F'
	 AND P.p_brand = 'Brand#54'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


CREATE VIEW V3 AS (
SELECT DISTINCT L.l_orderkey
FROM lineitem AS L, orders AS O
WHERE O.o_orderdate = L.l_shipdate
	 AND O.o_orderpriority = '4-NOT SPECIFIED'
	 AND L.l_linestatus = 'F'
	 AND O.o_orderstatus = 'F'
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


CREATE VIEW V4 AS (
SELECT DISTINCT L.l_linenumber
FROM lineitem AS L, orders AS O
WHERE O.o_orderdate = L.l_shipdate
	 AND O.o_orderpriority = '4-NOT SPECIFIED'
	 AND L.l_linestatus = 'F'
	 AND O.o_orderstatus = 'F'
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;

