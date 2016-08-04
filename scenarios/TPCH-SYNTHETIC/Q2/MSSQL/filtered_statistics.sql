CREATE STATISTICS LINEITEM_L_LINENUMBER
    ON LINEITEM(L_LINENUMBER) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'O';
	 	 
CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'O';

CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS LINEITEM_l_extendedprice
    ON LINEITEM(l_extendedprice) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'O';

CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(L_LINENUMBER,l_partkey,l_suppkey,l_extendedprice) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS ORDERS_o_totalprice
    ON ORDERS(o_totalprice) 
WHERE orders.o_orderpriority = '3-MEDIUM'
	AND orders.o_orderstatus = 'F';
