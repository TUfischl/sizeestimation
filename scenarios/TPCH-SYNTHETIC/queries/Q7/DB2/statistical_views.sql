
CREATE VIEW V1 AS (
SELECT lineitem.l_orderkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_totalprice = lineitem.l_extendedprice
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'O'
	 AND orders.o_orderpriority = '5-LOW');
	 
ALTER VIEW V1 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V1 WITH DISTRIBUTION;



CREATE VIEW V2 AS (
SELECT lineitem.l_orderkey
FROM lineitem, orders
WHERE orders.o_totalprice = lineitem.l_extendedprice
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'O'
	 AND orders.o_orderpriority = '5-LOW');
	 
ALTER VIEW V2 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V2 WITH DISTRIBUTION;



CREATE VIEW V3 AS (
SELECT customer.c_custkey
FROM orders, customer, lineitem
WHERE orders.o_custkey = customer.c_custkey
	 AND orders.o_totalprice = lineitem.l_extendedprice
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON'
	 AND orders.o_orderstatus = 'F'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'O'
	 AND orders.o_orderpriority = '5-LOW');
	 
ALTER VIEW V3 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V3 WITH DISTRIBUTION;



CREATE VIEW V4 AS (
SELECT nation.n_nationkey
FROM customer, nation
WHERE customer.c_nationkey = nation.n_nationkey);
	 
ALTER VIEW V4 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V4 WITH DISTRIBUTION;



CREATE VIEW V5 AS (
SELECT customer.c_custkey
FROM customer, nation
WHERE customer.c_nationkey = nation.n_nationkey);
	 
ALTER VIEW V5 ENABLE QUERY OPTIMIZATION;
RUNSTATS ON TABLE V5 WITH DISTRIBUTION;


