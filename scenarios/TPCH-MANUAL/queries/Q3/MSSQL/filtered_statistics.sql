CREATE STATISTICS LINEITEM_L_ORDERKEY  
    ON LINEITEM(L_ORDERKEY) 
WHERE 
LINEITEM.L_LINESTATUS = 'O';

CREATE STATISTICS LINEITEM_L_LINENUMBER  
    ON LINEITEM(L_LINENUMBER) 
WHERE 
LINEITEM.L_LINESTATUS = 'O';

CREATE STATISTICS LINEITEM_ALL  
    ON LINEITEM(L_ORDERKEY,L_LINENUMBER) 
WHERE 
LINEITEM.L_LINESTATUS = 'O';