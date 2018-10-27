--------------
--Chapter 2
--------------

use InsideTSQL2008


--Concat String Function
---------------------------------------------------------------------------
IF OBJECT_ID('dbo.ConcatOrders','FN') IS NOT NULL
DROP FUNCTION dbo.ConcatOrders
GO

CREATE FUNCTION dbo.ConcatOrders
    (@custid AS INT) RETURNS VARCHAR(MAX)
AS 

BEGIN
    DECLARE @ORDERS AS VARCHAR(MAX)

    SELECT @ORDERS= COALESCE(@ORDERS+',','')+CAST(ORDERID AS VARCHAR(10))
    FROM Sales.Orders
    WHERE custid = @custid

    RETURN @ORDERS;
END
GO
--SELECT DBO.CONCATORDERS(1)



