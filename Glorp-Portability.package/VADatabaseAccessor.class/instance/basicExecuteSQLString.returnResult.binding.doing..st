As yet unclassified
basicExecuteSQLString: aString returnResult: returnResult binding: aBindingArray doing: aBlock
	"^<GlorpCursoredStream | empty readStream> This method executes a general SQL command against the connection.
If a result is requested, it returns a GlorpCursoredStream wrapping an AbtResultTable that (should) hold an AbtCursor.  If
not, it returns self to cursorFor: which returns an empty readStream since along one calling route VA does not provide a
result if the string is not a select whereas VW does in general, and the caller sends upToEnd.
	Later, develop to use GlorpPreparedStatements (c.f. this method in VW) and resultTableFromQuerySpec:withValues:...
VW creates an SQLStringCommand to put in the cursor."

	^self cursorFor:  (returnResult		"was check if aString was SELECT statement, now moved to a caller"
		ifFalse:
			[connection
				executeSQLStatement: aString
				ifError: [:err | GlorpError signalWith: err].
			aBlock value.
			self]					"must return self to be handled in cursorFor:"
		ifTrue:
			[self basicExecuteSQLStringWithResult: aString doing: aBlock])