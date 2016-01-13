services tables
printSqlStatementToListTablesInSchema: schemaString on: aStream
	"Not standardized"

	| lowerSchema |
	lowerSchema := schemaString isNil
		ifTrue: [schemaString]
		ifFalse: [schemaString asLowercase].
	aStream nextPutAll: 'SELECT table_name FROM sysibm.tables '.
	(lowerSchema notNil and: [lowerSchema notEmpty]) ifTrue:
		[aStream
			nextPutAll: 'WHERE lower(table_schema) = ';
			nextPut: $';
			nextPutAll: lowerSchema;
			nextPut: $']