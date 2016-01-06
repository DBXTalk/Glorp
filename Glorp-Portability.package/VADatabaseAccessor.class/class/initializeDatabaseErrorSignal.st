as yet unclassified
initializeDatabaseErrorSignal

	databaseErrorSignal := ((Smalltalk at: #SystemExceptions) at: 'ExError') newChild.
	databaseErrorSignal markReadOnly: false;
		description: 'Database error';
		resumable: true;
		defaultHandler: nil;
		markReadOnly: true