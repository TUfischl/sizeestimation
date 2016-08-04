CREATE STATISTICS LINEITEM_L_LINENUMBER
    ON LINEITEM(L_LINENUMBER) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';

CREATE STATISTICS LINEITEM_l_extendedprice
    ON LINEITEM(l_extendedprice) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';

CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(L_LINENUMBER,l_orderkey,l_partkey,l_suppkey,l_extendedprice) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS ORDERS_o_orderkey
    ON ORDERS(o_orderkey) 
WHERE orders.o_orderpriority = '4-NOT SPECIFIED';

CREATE STATISTICS PART_p_retailprice
    ON PART(p_retailprice) 
WHERE part.p_mfgr = 'Manufacturer#4';

CREATE STATISTICS PART_p_partkey
    ON PART(p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#4';

CREATE STATISTICS PART_ALL
    ON PART(p_retailprice,p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#4';