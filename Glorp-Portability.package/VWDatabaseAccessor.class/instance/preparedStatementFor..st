executing
preparedStatementFor: aCommand
	| wasMarkedBusyForUs statement |
	wasMarkedBusyForUs := false.
	statement := preparedStatements
		lookupClass: GlorpPreparedStatement
		key: aCommand signature
		ifAbsentPut:
			[wasMarkedBusyForUs := true.
			self newPreparedStatementFor: aCommand].
	(wasMarkedBusyForUs not and: [statement busy])
		ifTrue: [statement := self newPreparedStatementFor: aCommand].
	^statement.