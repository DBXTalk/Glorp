testing
reusePreparedStatements
	"Firebird/InterBase supports binding of parameters (i.e. instead of printing them as strings within the SQL statement);  indeed, when handling Blobs, the current IBEXDI implementation demands it.  However if RowBasedCommands (INSERT, DELETE, UPDATE) attempt to reuse bound statements, there are failures;  every 79th or 358th or whatever reuse of such a statement returns bad data.  (SELECT statements are fine.)  This was hidden when failure to release the GlorpCursor in RowBasedCommands left statements busy, so unreusable;  the fix (first made in Glorp 0.3.181) revealed it.  We return false here so that reusePreparedStatements is initialized to false for any accessor whose login uses this platform."

	^false

"To study further:  is it that prepared-statement-signature-matching needs to distingush the types of the contents of an EqualOnContentsReadStream, or does the database need a bug fix, or does the IBEXDI need to handle Blobs differently?  If the problems with RowBaseCommands cannot be resolved, can we / should we distinguish between reusing them and reusing SELECT statements?"