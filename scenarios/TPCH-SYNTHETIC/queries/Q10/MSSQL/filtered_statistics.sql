CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';
	 
CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';

CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';
	 
CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';	 
	 
CREATE STATISTICS LINEITEM_l_extendedprice
    ON LINEITEM(l_extendedprice) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';	 

CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_orderkey,l_linenumber,l_partkey,l_suppkey,l_extendedprice) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';	 	 
	 
CREATE STATISTICS orders_o_totalprice
    ON orders(o_totalprice) 
WHERE orders.o_orderstatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH';

CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE orders.o_orderstatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH';

CREATE STATISTICS orders_ALL
    ON orders(o_totalprice,o_orderkey) 
WHERE orders.o_orderstatus = 'F'
	 AND orders.o_orderpriority = '2-HIGH';