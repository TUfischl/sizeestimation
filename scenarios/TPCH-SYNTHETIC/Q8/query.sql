--Actual size: 349221
--SQl Server estimate: 1050940
SELECT DISTINCT partsupp.ps_partkey AS A0, lineitem.l_linenumber AS A1, lineitem.l_orderkey AS A2
FROM partsupp, supplier, lineitem, nation
WHERE partsupp.ps_suppkey = supplier.s_suppkey
	 AND partsupp.ps_availqty = lineitem.l_quantity
	 AND supplier.s_nationkey = nation.n_nationkey
	 AND lineitem.l_shipmode = 'REG AIR'
	 AND lineitem.l_returnflag = 'N'
	 AND lineitem.l_shipinstruct = 'NONE'
	 AND nation.n_name = 'PERU'
	 AND lineitem.l_linestatus = 'O'


