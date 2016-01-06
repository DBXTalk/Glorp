executing
executeCommandBound: aCommand
	| statement cursor time block |
	self logCommand: aCommand bound: true.
	self logOnly ifTrue: [^#() readStream].
	block := [
		statement := self statementFor: aCommand.
		statement statement bindInput: aCommand bindings.
		cursor := self executeCommand: aCommand inDBSession: statement statement.
		cursor statement: statement].
	time := Time millisecondsToRun: block.
	self logTime: time.
	^cursor.