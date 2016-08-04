CREATE STATISTICS LINEITEM_l_linenumber
    ON LINEITEM(l_linenumber) 
WHERE lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_l_orderkey
    ON LINEITEM(l_orderkey) 
WHERE lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_l_suppkey
    ON LINEITEM(l_suppkey) 
WHERE lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_l_shipdate
    ON LINEITEM(l_shipdate) 
WHERE lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS LINEITEM_all
    ON LINEITEM(l_linenumber,l_orderkey,l_suppkey,l_shipdate) 
WHERE lineitem.l_shipinstruct = 'TAKE BACK RETURN'
	 AND lineitem.l_linestatus = 'F';
	 
CREATE STATISTICS orders_o_orderdate
    ON orders(o_orderdate) 
WHERE orders.o_orderpriority = '4-NOT SPECIFIED'

CREATE STATISTICS nation_n_nationkey
    ON nation(n_nationkey) 
WHERE nation.n_name = 'GERMANY';