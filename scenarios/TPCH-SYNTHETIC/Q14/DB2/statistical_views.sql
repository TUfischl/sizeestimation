
CREATE VIEW V1 AS (
SELECT DISTINCT nation.n_nationkey
FROM customer, nation
WHERE customer.c_nationkey = nation.n_nationkey);
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;


CREATE VIEW V2 AS (
SELECT DISTINCT supplier.s_suppkey
FROM customer, nation, supplier
WHERE customer.c_nationkey = nation.n_nationkey
	 AND customer.c_acctbal = supplier.s_acctbal);
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;


CREATE VIEW V3 AS (
SELECT DISTINCT orders.o_orderkey
FROM lineitem, orders
WHERE orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_returnflag = 'N'
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND orders.o_orderstatus = 'O'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;


CREATE VIEW V4 AS (
SELECT DISTINCT supplier.s_suppkey
FROM customer, supplier
WHERE customer.c_acctbal = supplier.s_acctbal);
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;


CREATE VIEW V5 AS (
SELECT DISTINCT orders.o_orderkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_orderdate = lineitem.l_receiptdate
	 AND lineitem.l_returnflag = 'N'
	 AND orders.o_orderpriority = '3-MEDIUM'
	 AND orders.o_orderstatus = 'O'
	 AND lineitem.l_linestatus = 'O');
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;


