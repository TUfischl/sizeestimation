CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE lineitem.l_linestatus = 'F';

CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE lineitem.l_linestatus = 'F';

CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_linestatus = 'F';

CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_shipdate,l_linenumber,l_orderkey,l_partkey) 
WHERE lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS customer_c_custkey
    ON customer(c_custkey) 
WHERE customer.c_mktsegment = 'BUILDING';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE orders.o_orderpriority = '4-NOT SPECIFIED'
AND orders.o_orderstatus = 'F';

CREATE STATISTICS orders_o_custkey
    ON orders(o_custkey) 
WHERE orders.o_orderpriority = '4-NOT SPECIFIED'
AND orders.o_orderstatus = 'F';

CREATE STATISTICS orders_ALL
    ON orders(o_orderdate,o_custkey) 
WHERE orders.o_orderpriority = '4-NOT SPECIFIED'
AND orders.o_orderstatus = 'F';

CREATE STATISTICS part_p_partkey
    ON part(p_partkey) 
WHERE part.p_brand = 'Brand#54';
