conversion times
printTime: aTime for: aType
	| stream |
	aTime isNil ifTrue: [^nil].
	stream := WriteStream on: String new.
	stream nextPutAll: 'time '''.
	self
		printTime: aTime
		isoFormatOn: stream.
	stream nextPutAll: ''''.
	^stream contents.