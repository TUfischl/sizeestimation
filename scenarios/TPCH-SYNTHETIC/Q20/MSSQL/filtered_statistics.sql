CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_shipmode = 'REG AIR';

CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE lineitem.l_shipmode = 'REG AIR';

CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_shipmode = 'REG AIR';

CREATE STATISTICS LINEITEM_l_extendedprice
    ON LINEITEM(l_extendedprice) 
WHERE lineitem.l_shipmode = 'REG AIR';

CREATE STATISTICS LINEITEM_all
    ON LINEITEM(l_orderkey,l_shipdate,l_suppkey,l_extendedprice) 
WHERE lineitem.l_shipmode = 'REG AIR';

CREATE STATISTICS customer_c_custkey 
    ON customer(c_custkey) 
WHERE customer.c_mktsegment = 'AUTOMOBILE';

CREATE STATISTICS part_p_retailprice
    ON part(p_retailprice) 
WHERE part.p_brand = 'Brand#52'

CREATE STATISTICS orders_o_orderkey
    ON orders(o_orderkey) 
WHERE orders.o_orderpriority = '2-HIGH'

CREATE STATISTICS orders_o_custkey
    ON orders(o_custkey) 
WHERE orders.o_orderpriority = '2-HIGH'

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE orders.o_orderpriority = '2-HIGH'

CREATE STATISTICS orders_all
    ON orders(o_orderkey,o_custkey,o_orderdate) 
WHERE orders.o_orderpriority = '2-HIGH'

