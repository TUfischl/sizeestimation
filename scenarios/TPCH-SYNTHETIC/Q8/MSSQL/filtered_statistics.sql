CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS LINEITEM_l_quantity
    ON LINEITEM(l_quantity) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_orderkey,l_linenumber,l_quantity) 
WHERE lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS nation_n_nationkey
    ON nation(n_nationkey) 
WHERE nation.n_name = 'PERU';
