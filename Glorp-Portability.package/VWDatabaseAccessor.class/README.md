An accessor for VisualWorks EXDI connections.

Instance Variables:
	driverSession	<ExternalDatabaseSession>	If we aren't re-using prepared statements, then we work directly with a single EXDI session that we keep hold of and reuse for each command.
	preparedStatements	<CacheManager>	A cache of prepared statements that we can re-use, if the session is set appropriately.

