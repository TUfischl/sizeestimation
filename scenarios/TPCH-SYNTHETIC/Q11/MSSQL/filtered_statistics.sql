CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_shipmode = 'RAIL'
	 AND lineitem.l_returnflag = 'N';
	 
CREATE STATISTICS LINEITEM_l_quantity
    ON LINEITEM(l_quantity) 
WHERE lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_shipmode = 'RAIL'
	 AND lineitem.l_returnflag = 'N';

CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_shipmode = 'RAIL'
	 AND lineitem.l_returnflag = 'N';	 

CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_orderkey,l_quantity,l_suppkey) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_returnflag = 'A';	 	 
	 
CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE orders.o_orderpriority = '4-NOT SPECIFIED'
AND orders.o_orderstatus = 'O';
