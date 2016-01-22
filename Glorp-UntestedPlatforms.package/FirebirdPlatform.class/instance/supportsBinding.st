testing
supportsBinding
	"Firebird/InterBase supports binding in all statements (indeed its EXDI appears to require it for blobs) and can also reuse SELECT statements, but reuse of RowBasedCommands (INSERT, DELETE, UPDATE) for Blobs is unreliable although binding of such statements is essential (see my #reusePreparedStatementsIfSupported method comment)."

	^true