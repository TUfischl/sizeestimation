
CREATE VIEW V1 AS (
SELECT DISTINCT L.l_orderkey, L.l_linenumber
FROM DB2ADMIN.lineitem AS L, DB2ADMIN.partsupp AS P
WHERE P.ps_availqty = L.l_quantity
	 AND L.l_shipmode = 'REG AIR'
	 AND L.l_returnflag = 'N'
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_linestatus = 'O'
);

ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT P.ps_partkey, L.l_orderkey
FROM DB2ADMIN.lineitem AS L, DB2ADMIN.partsupp As P
WHERE P.ps_availqty = L.l_quantity
	 AND L.l_shipmode = 'REG AIR'
	 AND L.l_returnflag = 'N'
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_linestatus = 'O'
);

ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


CREATE VIEW V3 AS (
SELECT DISTINCT L.l_linenumber, P.ps_partkey
FROM DB2ADMIN.partsupp AS P, DB2ADMIN.supplier AS S, DB2ADMIN.lineitem AS L
WHERE P.ps_suppkey = S.s_suppkey
	 AND P.ps_availqty = L.l_quantity
	 AND L.l_shipmode = 'REG AIR'
	 AND L.l_returnflag = 'N'
	 AND L.l_shipinstruct = 'NONE'
	 AND L.l_linestatus = 'O'
);

ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


