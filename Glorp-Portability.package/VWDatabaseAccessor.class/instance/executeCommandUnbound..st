executing
executeCommandUnbound: aCommand
	| statement cursor block time |
	self logCommand: aCommand bound: false.
	self logOnly ifTrue: [^self].
	block := [
		statement := self statementFor: aCommand.
		cursor := self executeCommand: aCommand inDBSession: statement statement.
		cursor statement: statement].
	time := Time millisecondsToRun: block.
	self logTime: time.
	^cursor.