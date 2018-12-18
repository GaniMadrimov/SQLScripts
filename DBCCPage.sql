-- DBCC PAGE

DBCC TRACESTATUS (-1); -- see all enabled trace flags
DBCC TRACEON(3604);
DBCC TRACESTATUS (-1); 

-- We'll look at a simple page from the pubs database authors table
-- First take a look at the data
SELECT * FROM pubs..authors;

/* 
General Syntax:
--------------------------------------------------------
DBCC PAGE(database name,file number,page number, option)
--------------------------------------------------------

*/

-- Examine Buffer and Page Header
DBCC PAGE(pubs, 1, 336, 0);

-- Examine header plus each row
DBCC PAGE(pubs, 1, 336, 1);

-- Dump the page
DBCC PAGE(pubs, 1, 336, 2);

-- Examine header plus full details for each row
DBCC PAGE(pubs, 1, 336, 3);




-----------------
-- Enable help
-----------------
DBCC TRACEON(2588);
DBCC HELP(PAGE);
DBCC TRACEOFF(2588);
