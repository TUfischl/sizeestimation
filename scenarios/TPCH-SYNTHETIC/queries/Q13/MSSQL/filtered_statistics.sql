CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE  lineitem.l_returnflag = 'N';

CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE  lineitem.l_returnflag = 'N';

CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE  lineitem.l_returnflag = 'N';
	 
CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE  lineitem.l_returnflag = 'N';

CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE  lineitem.l_returnflag = 'N';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_linenumber,l_orderkey,l_partkey,l_shipdate,l_suppkey) 
WHERE  lineitem.l_returnflag = 'N';

CREATE STATISTICS customer_c_acctbal
    ON customer(c_acctbal) 
WHERE customer.c_mktsegment = 'BUILDING';

CREATE STATISTICS part_p_partkey
    ON part(p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#3';

CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE orders.o_orderstatus = 'P';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE orders.o_orderstatus = 'P';

CREATE STATISTICS orders_ALL
    ON orders(o_orderkey,o_orderdate) 
WHERE orders.o_orderstatus = 'P';
