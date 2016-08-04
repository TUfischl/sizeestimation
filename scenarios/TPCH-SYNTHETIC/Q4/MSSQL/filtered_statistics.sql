CREATE STATISTICS LINEITEM_l_receiptdate
    ON LINEITEM(l_receiptdate) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(l_receiptdate,l_orderkey) 
WHERE lineitem.l_returnflag = 'R'
	 AND lineitem.l_shipmode = 'SHIP'
	 AND lineitem.l_shipinstruct = 'COLLECT COD';
	 
CREATE STATISTICS customer_c_nationkey
    ON customer(c_nationkey) 
WHERE customer.c_mktsegment = 'FURNITURE';

CREATE STATISTICS customer_c_custkey
    ON customer(c_custkey) 
WHERE customer.c_mktsegment = 'FURNITURE';

CREATE STATISTICS customer_ALL
    ON customer(c_nationkey,c_custkey) 
WHERE customer.c_mktsegment = 'FURNITURE';

CREATE STATISTICS nation_n_nationkey
    ON nation(n_nationkey) 
WHERE nation.n_name = 'MOROCCO';
