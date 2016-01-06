executing
executeCommand: aCommand inDBSession: aSession
	"Execute the command, given a database session which has already been prepared for this command"
	| answerStream cursor |
	aSession execute.
	answerStream := aSession answer.
	aCommand needsRowCount
		ifTrue:
			[aCommand
				rowCount:
					(self platform supportsRowCount
						ifTrue: [aSession rowCount]
						ifFalse: [1])].
	cursor := self cursorFor: answerStream command: aCommand.
	cursor statement: (GlorpPreparedStatement new statement: aSession).
	^cursor.