ANSI
signal: aString
	"VisualWorks has non-ANSI semantics for this method. Re-implement to do the standard thing"

	^Dialect isVisualWorks
		ifTrue:
			[self messageText: aString.
			self raise]
		ifFalse: [super signal: aString].