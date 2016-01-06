services tables
printSqlStatementToTestExistenceOfTable: tableName inSchema: schemaString on: aStream
	"Firebird uses the same table for tables, views and possibly other stuff, does NOT support schemas. 
	As currently written, this query will not test for existence of views OR system tables."

	aStream
		nextPutAll: 'SELECT count(*) FROM rdb$relations ';
		nextPutAll: 'WHERE rdb$relation_name = ';
		nextPut: $';
		nextPutAll: tableName;
		nextPut: $';
		nextPutAll: ' AND rdb$view_blr is null AND (rdb$system_flag is null OR rdb$system_flag = 0);'