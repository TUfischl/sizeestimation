CREATE STATISTICS LINEITEM_L_LINENUMBER
    ON LINEITEM(L_LINENUMBER) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';

CREATE STATISTICS LINEITEM_L_PARTKEY
    ON LINEITEM(L_PARTKEY) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';
	 
CREATE STATISTICS LINEITEM_L_SHIPDATE
    ON LINEITEM(L_SHIPDATE) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';

CREATE STATISTICS LINEITEM_ALL
    ON LINEITEM(L_SHIPDATE,L_LINENUMBER,L_PARTKEY) 
WHERE lineitem.l_shipmode = 'FOB'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND lineitem.l_linestatus = 'O';

CREATE STATISTICS PART_P_PARTKEY
    ON PART(P_PARTKEY) 
WHERE part.p_brand = 'Brand#13';

CREATE STATISTICS ORDERS_o_custkey
    ON ORDERS(o_custkey) 
WHERE orders.o_orderpriority = '5-LOW';

CREATE STATISTICS ORDERS_o_orderdate
    ON ORDERS(o_orderdate) 
WHERE orders.o_orderpriority = '5-LOW';

CREATE STATISTICS ORDERS_o_orderkey
    ON ORDERS(o_orderkey) 
WHERE orders.o_orderpriority = '5-LOW';

CREATE STATISTICS ORDERS_ALL
    ON ORDERS(o_custkey,o_orderdate,o_orderkey) 
WHERE orders.o_orderpriority = '5-LOW';

