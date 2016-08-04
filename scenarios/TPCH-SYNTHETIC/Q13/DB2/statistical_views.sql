
CREATE VIEW V1 AS (
SELECT DISTINCT orders.o_orderkey, lineitem.l_linenumber
FROM orders, lineitem, part
WHERE lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_partkey = part.p_partkey
	 AND orders.o_orderstatus = 'P'
	 AND lineitem.l_returnflag = 'N'
	 AND part.p_mfgr = 'Manufacturer#3');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT orders.o_orderkey, lineitem.l_linenumber
FROM orders, lineitem, supplier
WHERE lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND orders.o_orderstatus = 'P'
	 AND lineitem.l_returnflag = 'N');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT DISTINCT orders.o_orderkey
FROM orders
WHERE orders.o_orderstatus = 'P');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM lineitem, supplier, customer
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND supplier.s_acctbal = customer.c_acctbal
	 AND lineitem.l_returnflag = 'N'
	 AND customer.c_mktsegment = 'BUILDING');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT DISTINCT lineitem.l_linenumber
FROM lineitem, part, supplier
WHERE lineitem.l_partkey = part.p_partkey
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND lineitem.l_returnflag = 'N'
	 AND part.p_mfgr = 'Manufacturer#3');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;



