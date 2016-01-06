testing
isExistingTable: tableName inSchema: schemaName
	"When the platform is SQL Server, the statement returned to test the presence of Store is

SELECT count(*) FROM newbern2.INFORMATION_SCHEMA.TABLES WHERE lower(table_name) = 'tw_databaseidentifier';

If Store is absent it is likely newbern2 is also absent, and in that case the above statement produces an unableToExecuteSQLSignal in VW.  The correct and dialect-neutral fix is to develop this to guard-test for owner/schema existence where used, retiring this temporary fix."

	^[super isExistingTable: tableName inSchema: schemaName]
		on: connection class unableToExecuteSQLSignal
		do: [:ex | ex return: false]