ANSI
signal
	"VisualWorks has non-ANSI semantics for this method. Re-implement to do the standard thing"
	^Dialect isVisualWorks ifTrue: [self raise] ifFalse: [super signal].