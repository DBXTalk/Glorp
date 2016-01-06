functions
initializeFunctions
	"Firebird 2.5 and later supports the ANSI SQL 'SIMILAR TO' form of regex, in which the % and _ of SQL's LIKE predicate replace the corresponding * and ? of regex."

	super initializeFunctions.
	functions at: #similarTo: put: (InfixFunction named: 'SIMILAR TO').