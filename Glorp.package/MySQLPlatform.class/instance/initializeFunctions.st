functions
initializeFunctions
	super initializeFunctions.
	functions at: #regexMatches: put: (InfixFunction named: 'REGEXP').
	functions at: #, put: (InfixFunction named: 'CONCAT').