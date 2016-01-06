as yet unclassified
externalDatabaseErrorSignal

	databaseErrorSignal isNil ifTrue: [self initializeDatabaseErrorSignal ].
	^databaseErrorSignal