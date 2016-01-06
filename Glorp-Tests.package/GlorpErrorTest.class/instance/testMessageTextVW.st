tests
testMessageTextVW
	| innerException text outerException error |
	Dialect isVisualWorks ifFalse: [^self].
	text := 'Something is horribly wrong'.
	error := (Dialect smalltalkAt: #ExternalDatabaseError) new dbmsErrorString: text.
	outerException := GlorpDatabaseReadError new databaseError: (Array with: error).
	[outerException signal] on: GlorpError do: [:ex |	
		self assert: ex messageText = text].
	
	innerException := (Dialect smalltalkAt: #ExternalDatabaseException) new.
	innerException parameter: (Array with: error).
	[DatabaseAccessor new handleError: innerException for: InsertCommand new ] on: GlorpError do: [:ex |	
		self assert: ex messageText = text.
		ex return: nil].