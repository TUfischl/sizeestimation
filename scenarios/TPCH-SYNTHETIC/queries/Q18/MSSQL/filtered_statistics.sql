CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R';
	 
CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R';
	 
CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R';
	 
CREATE STATISTICS LINEITEM_all
    ON LINEITEM(l_orderkey,l_partkey,l_shipdate) 
WHERE lineitem.l_shipinstruct = 'COLLECT COD'
	 AND lineitem.l_returnflag = 'R';
	 
CREATE STATISTICS part_p_partkey
    ON part(p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#5';

CREATE STATISTICS part_p_retailprice
    ON part(p_retailprice) 
WHERE part.p_mfgr = 'Manufacturer#5';

CREATE STATISTICS part_all
    ON part(p_partkey,p_retailprice) 
WHERE part.p_mfgr = 'Manufacturer#5';

CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate)
WHERE orders.o_orderpriority = '1-URGENT';

CREATE STATISTICS orders_o_custkey
    ON orders(o_custkey)
WHERE orders.o_orderpriority = '1-URGENT';

CREATE STATISTICS orders_all
    ON orders(o_orderdate,o_custkey)
WHERE orders.o_orderpriority = '1-URGENT';
