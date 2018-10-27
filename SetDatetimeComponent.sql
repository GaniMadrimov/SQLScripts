-- Set the time component to midnight:
                            --anchor date
SELECT DATEADD(dd,DATEDIFF(dd,'19991231',GETDATE()),'19991231')


-- Set day component to first day of the month:
					   --anchor date
SELECT DATEADD(mm,DATEDIFF(mm,'19990101',GETDATE()),'19990101')


-- Set day component to last day of the month:
                            --anchor date
SELECT DATEADD(mm,DATEDIFF(mm,'19991231',GETDATE()),'19991231')


-- Set day component to first day of the year:
					   --anchor date
select DATEADD(yy,DATEDIFF(yy,'19990101',GETDATE()),'19990101')


-- Set day component to last day of the year:
					   --anchor date
select DATEADD(yy,DATEDIFF(yy,'19991231',GETDATE()),'19991231')
