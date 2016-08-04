CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';
	 
CREATE STATISTICS LINEITEM_l_extendedprice
    ON LINEITEM(l_extendedprice) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';
	 
CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';
	 
CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';
	 
CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';
	 
CREATE STATISTICS LINEITEM_all
    ON LINEITEM(l_linenumber,l_extendedprice,l_partkey,l_suppkey,l_shipdate) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_linestatus = 'F'
	 AND lineitem.l_shipinstruct = 'DELIVER IN PERSON';

CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE orders.o_orderpriority = '2-HIGH';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE orders.o_orderpriority = '2-HIGH';

CREATE STATISTICS orders_all
    ON orders(o_orderkey,o_orderdate) 
WHERE orders.o_orderpriority = '2-HIGH';
