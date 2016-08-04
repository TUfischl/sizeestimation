CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND lineitem.l_shipinstruct = 'NONE';
	 
CREATE STATISTICS LINEITEM_l_extendedprice
    ON LINEITEM(l_extendedprice) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND lineitem.l_shipinstruct = 'NONE';
	 
CREATE STATISTICS LINEITEM_l_partkey
    ON LINEITEM(l_partkey) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND lineitem.l_shipinstruct = 'NONE';
	 
CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND lineitem.l_shipinstruct = 'NONE';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_orderkey,l_extendedprice,l_partkey,l_suppkey) 
WHERE lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipmode = 'AIR'
	 AND lineitem.l_linestatus = 'O'
	 AND lineitem.l_shipinstruct = 'NONE';
	 
CREATE STATISTICS part_p_retailprice
    ON part(p_retailprice) 
WHERE part.p_mfgr = 'Manufacturer#4';

CREATE STATISTICS part_p_partkey
    ON part(p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#4';

CREATE STATISTICS part_ALL
    ON part(p_retailprice,p_partkey) 
WHERE part.p_mfgr = 'Manufacturer#4';
