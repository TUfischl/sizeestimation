CREATE STATISTICS LINEITEM_l_receiptdate
    ON LINEITEM(l_receiptdate) 
WHERE  lineitem.l_returnflag = 'N'
AND lineitem.l_linestatus = 'O';

CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE  orders.o_orderpriority = '3-MEDIUM'
AND orders.o_orderstatus = 'O';

CREATE STATISTICS orders_o_custkey
    ON orders(o_custkey) 
WHERE  orders.o_orderpriority = '3-MEDIUM'
AND orders.o_orderstatus = 'O';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE  orders.o_orderpriority = '3-MEDIUM'
AND orders.o_orderstatus = 'O';

CREATE STATISTICS orders_all
    ON orders(o_orderkey,o_custkey,o_orderdate) 
WHERE  orders.o_orderpriority = '3-MEDIUM'
AND orders.o_orderstatus = 'O';