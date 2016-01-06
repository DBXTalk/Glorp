executing
executeCommandUnbound: aCommand
	| answerStream |
	self log: aCommand sqlString.	"change to self logCommand: aCommand sqlString bound: false." 
	self logOnly ifTrue: [^self].
	answerStream := self basicExecuteSQLStringWithResult: aCommand sqlString doing: [].
	aCommand needsRowCount
		ifTrue:
			[aCommand
				rowCount:
					(self platform supportsRowCount
						ifTrue: [answerStream rowCount]
						ifFalse: [1])].
	^self cursorFor: answerStream command: aCommand.