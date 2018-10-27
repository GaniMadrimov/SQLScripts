
------------------------------------
--Running Totals
------------------------------------

Select O1.*, 
	   (Select SUM(qty)
	   from Sales.OrderTotalsByYear AS O2
	   where O2.orderyear<=O1.orderyear)
from Sales.OrderTotalsByYear AS O1
order by O1.orderyear
