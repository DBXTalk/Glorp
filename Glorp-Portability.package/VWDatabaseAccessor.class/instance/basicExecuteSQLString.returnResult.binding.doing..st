executing
basicExecuteSQLString: aString returnResult: returnResult binding: aBindingArray doing: aBlock
	"Duplicate some of the logic of command execution, primarily because of the need to do special treatment depending if we want a result or not, and to execute the block. Put the statement into the driverSesssion (ugh) so that we can check the rowCount if necessary"
	| answerStream command statement session |
	answerStream := nil.
	command := SQLStringCommand new.
	command setSQLString: aString.
	command parameters: aBindingArray.
	(aBindingArray isNil or: [aBindingArray class ~= Association and: [aBindingArray isEmpty]]) ifTrue: [command useBinding: false].
	statement := self preparedStatementFor: command.
	session := statement statement.
	driverSession := session.
	command useBinding ifTrue: [
		session bindInput: aBindingArray].
	session execute.
	"Always do this, because at least with ODBC, if we don't ask for the answer, we don't get errors, and subsequent statements get them"
	answerStream := session answer.
	answerStream == #noAnswerStream ifTrue: [answerStream := ReadStream on: #()].
	answerStream == #noMoreAnswers ifTrue: [answerStream := ReadStream on: #()].
	aBlock value.
	returnResult 
		ifTrue: [ | cursor |
			cursor := self cursorFor: answerStream command: command.
			cursor statement: statement.
			^cursor]
		ifFalse: [session disconnect].