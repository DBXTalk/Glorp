This is a Glorp platform for the InterBase and Firebird databases.  It is currently subclassed from Ocelot because both claim to be highly standard-compliant.  It would probably be better if both inherited from some sort of abstract SQL92Platform.

Firebird/InterBase supports binding in all statements (indeed its EXDI appears to require it for blobs) and can also reuse SELECT statements, but reuse of RowBasedCommands (INSERT, DELETE, UPDATE) for blobs is unreliable although binding of such statements is essential.  Set
	reusePreparedStatements: false
on Logins that have an instance of this class as their platform.
