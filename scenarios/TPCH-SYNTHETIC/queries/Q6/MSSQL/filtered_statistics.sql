CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE lineitem.l_shipmode = 'SHIP';
	 
CREATE STATISTICS LINEITEM_l_receiptdate
    ON LINEITEM(l_receiptdate) 
WHERE lineitem.l_shipmode = 'SHIP';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_linenumber,l_receiptdate) 
WHERE lineitem.l_shipmode = 'SHIP';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE orders.o_orderpriority = '5-LOW'
	AND orders.o_orderstatus = 'O';
	
CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE orders.o_orderpriority = '5-LOW'
	AND orders.o_orderstatus = 'O';
	 
CREATE STATISTICS orders_o_custkey
    ON orders(o_custkey) 
WHERE orders.o_orderpriority = '5-LOW'
	AND orders.o_orderstatus = 'O';
	 
CREATE STATISTICS orders_ALL
    ON orders(o_custkey,o_orderkey,o_orderdate) 
WHERE orders.o_orderpriority = '5-LOW'
	AND orders.o_orderstatus = 'O';
