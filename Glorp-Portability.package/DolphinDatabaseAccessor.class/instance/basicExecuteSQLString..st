executing
basicExecuteSQLString: aString
	| resultSet array |
	self log: aString.
	self logOnly ifTrue: [^self].
	resultSet := connection query: aString.	"Write statements don't like asArray if there's not result. DDL statements don't even like the isEmpty test"
	array := [resultSet isEmpty ifTrue: [#()] ifFalse: [resultSet asArray]]
		on: Dialect error
		do: [:ex | ex return: #()].
	resultSet
		close;
		free.
	^ReadStream on: array read.