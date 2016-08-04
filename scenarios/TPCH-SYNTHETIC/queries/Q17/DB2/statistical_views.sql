
CREATE VIEW V1 AS (
SELECT DISTINCT supplier.s_suppkey
FROM customer, nation, supplier
WHERE customer.c_nationkey = nation.n_nationkey
	 AND supplier.s_acctbal = customer.c_acctbal
	 AND nation.n_name = 'GERMANY');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT DISTINCT supplier.s_suppkey
FROM customer, supplier, nation
WHERE supplier.s_acctbal = customer.c_acctbal
	 AND customer.c_nationkey = nation.n_nationkey
	 AND nation.n_name = 'GERMANY');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT DISTINCT lineitem.l_linenumber, lineitem.l_orderkey
FROM orders, lineitem, supplier
WHERE lineitem.l_shipdate = orders.o_orderdate
	 AND lineitem.l_suppkey = supplier.s_suppkey
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND orders.o_orderpriority = '4-NOT SPECIFIED'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT DISTINCT lineitem.l_linenumber, supplier.s_suppkey
FROM lineitem, supplier, customer
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND supplier.s_acctbal = customer.c_acctbal
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F');
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT DISTINCT lineitem.l_linenumber, supplier.s_suppkey
FROM lineitem, supplier, customer, nation
WHERE lineitem.l_suppkey = supplier.s_suppkey
	 AND supplier.s_acctbal = customer.c_acctbal
	 AND customer.c_nationkey = nation.n_nationkey
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F'
	 AND nation.n_name = 'GERMANY');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;



