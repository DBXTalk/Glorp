services tables
printSqlStatementToListTablesInSchema: schemaString on: aStream
	"Firebird uses the same table for tables, views and possibly other stuff.  It does not support schemas within a database "

	aStream
		nextPutAll: 'SELECT rdb$relation_name as table_name FROM rdb$relations ';
		nextPutAll: 'WHERE rdb$view_blr is null and (rdb$system_flag is null or rdb$system_flag = 0);'