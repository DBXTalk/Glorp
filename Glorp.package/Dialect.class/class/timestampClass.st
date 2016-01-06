dates
timestampClass

	timestampClass == nil ifFalse: [^ timestampClass].
	Dialect isPharo
		ifTrue: [^ timestampClass := self smalltalkAt: #DateAndTime].
	Dialect isGNU ifTrue: [^ timestampClass := self smalltalkAt: #DateTime].
	(Dialect isSqueak or: [Dialect isDolphin])
		ifTrue: [^ timestampClass := self smalltalkAt: #TimeStamp].
	Dialect isVisualWorks ifTrue: [^ timestampClass := self smalltalkAt: #Timestamp].
	Dialect isVisualAge ifTrue: [^ timestampClass := self smalltalkAt: #Timestamp].
	Dialect isObjectStudio ifTrue: [^timestampClass := self smalltalkAt: #Timestamp].
	self error: 'Not yet implemented'.
	^ self