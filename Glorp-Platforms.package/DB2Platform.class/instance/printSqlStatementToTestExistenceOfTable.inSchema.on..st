services tables
printSqlStatementToTestExistenceOfTable: tableName inSchema: schemaString on: aStream
	" This query will test only for tables that the logged on user has access to... "

	| lowerTableName lowerSchema |
	lowerTableName := tableName asLowercase.
	lowerSchema := schemaString isNil
		ifTrue: [schemaString]
		ifFalse: [schemaString asLowercase].
	aStream
		nextPutAll: 'SELECT count(*) FROM sysibm.tables ';
		nextPutAll: 'WHERE lower(table_name) = ';
		nextPut: $';
		nextPutAll: lowerTableName;
		nextPut: $'.
	(lowerSchema notNil and: [lowerSchema notEmpty]) ifTrue:
		[aStream
			nextPutAll: ' AND lower(table_schema) = ';
			nextPut: $';
			nextPutAll: lowerSchema;
			nextPut: $']