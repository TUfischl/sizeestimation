
CREATE VIEW V1 AS (
SELECT DISTINCT P.ps_partkey, P.ps_suppkey
FROM partsupp AS P, lineitem AS L
WHERE L.l_quantity = P.ps_availqty
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_shipmode = 'RAIL'
	 AND L.l_returnflag = 'N'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT DISTINCT P.ps_suppkey, L.l_orderkey
FROM partsupp AS P, lineitem AS L
WHERE L.l_quantity = P.ps_availqty
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_shipmode = 'RAIL'
	 AND L.l_returnflag = 'N'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


CREATE VIEW V3 AS (
SELECT DISTINCT L.l_orderkey, P.ps_suppkey
FROM lineitem AS L, supplier AS S, partsupp AS P
WHERE L.l_suppkey = S.s_suppkey
	 AND L.l_quantity = P.ps_availqty
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_shipmode = 'RAIL'
	 AND L.l_returnflag = 'N'
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


CREATE VIEW V4 AS (
SELECT DISTINCT P.ps_partkey, P.ps_suppkey
FROM lineitem AS L, orders AS O, partsupp AS P
WHERE L.l_orderkey = O.o_orderkey
	 AND L.l_quantity = P.ps_availqty
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_shipmode = 'RAIL'
	 AND O.o_orderpriority = '4-NOT SPECIFIED'
	 AND L.l_returnflag = 'N'
	 AND O.o_orderstatus = 'O'
);

ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;


CREATE VIEW V5 AS (
SELECT DISTINCT P.ps_partkey, L.l_orderkey
FROM lineitem AS L, orders AS O, partsupp AS P
WHERE L.l_orderkey = O.o_orderkey
	 AND L.l_quantity = P.ps_availqty
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_shipmode = 'RAIL'
	 AND O.o_orderpriority = '4-NOT SPECIFIED'
	 AND L.l_returnflag = 'N'
	 AND O.o_orderstatus = 'O'
);

ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;
