conversion times
printTimestamp: aTimestamp on: stream for: aType

	aTimestamp isNil ifTrue: [stream nextPutAll: 'NULL'. ^self].
	stream nextPutAll: 'timestamp '''.
	self
		printDate: aTimestamp
		isoFormatOn: stream.
	stream nextPut: $ .
	self
		printTime: aTimestamp
		isoFormatOn: stream.
	"	milliseconds: true."
	stream nextPutAll: ''''.