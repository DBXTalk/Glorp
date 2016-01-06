executing
basicExecuteSQLString: aString
	| result rowCollection |
	self log: aString.
	self logOnly ifTrue: [^self].
	result := connection execute: aString.
	result errorResponse notNil
		ifTrue:
			[self externalDatabaseErrorSignal signal: result errorResponse value].
	rowCollection := OrderedCollection new.
	result rows do: [:ea | rowCollection add: ea data asArray].
 	^rowCollection asArray