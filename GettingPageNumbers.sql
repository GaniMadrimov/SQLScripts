USE pubs;
GO
SELECT * FROM sys.dm_db_database_page_allocations(db_id('pubs'), null, null, null, 'DETAILED');
GO
SELECT allocated_page_file_id as PageFID, allocated_page_page_id as PagePID, 
       object_id as ObjectID, partition_id AS PartitionID, 
	   allocation_unit_type_desc as AU_type, page_type as PageType
FROM sys.dm_db_database_page_allocations(db_id('pubs'), object_id('authors'), null, null, 'DETAILED')
-- WHERE page_type = 1;
GO
