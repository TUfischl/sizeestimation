CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE  lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE  lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE  lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_linenumber,l_shipdate,l_suppkey) 
WHERE  lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS orders_o_custkey
    ON orders(o_custkey) 
WHERE  orders.o_orderstatus = 'F';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE  orders.o_orderstatus = 'F';

CREATE STATISTICS orders_o_totalprice
    ON orders(o_totalprice) 
WHERE  orders.o_orderstatus = 'F';

CREATE STATISTICS orders_ALL
    ON orders(o_custkey,o_orderdate,o_totalprice) 
WHERE  orders.o_orderstatus = 'F';

CREATE STATISTICS part_p_partkey
    ON part(p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#4';

CREATE STATISTICS part_p_retailprice
    ON part(p_retailprice) 
WHERE part.p_mfgr = 'Manufacturer#4';

CREATE STATISTICS part_all
    ON part(p_partkey,p_retailprice) 
WHERE part.p_mfgr = 'Manufacturer#4';
