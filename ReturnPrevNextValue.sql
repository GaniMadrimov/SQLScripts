------------------------------------
--Returning previous or next values
------------------------------------


--Previous value
Select O1.orderid,O1.custid,O1.empid,
	   (select max(O2.orderid)
	   from Sales.Orders AS O2
	   where O2.orderid < O1.orderid) AS Previous
from Sales.Orders AS O1

--Next value
Select O1.orderid,O1.custid,O1.empid,
	   (select min(O2.orderid)
	   from Sales.Orders AS O2
	   where O2.orderid > O1.orderid) AS Previous
from Sales.Orders AS O1
