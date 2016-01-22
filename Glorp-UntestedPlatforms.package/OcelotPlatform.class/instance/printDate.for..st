conversion times
printDate: aDate for: aType
	| stream |
	aDate isNil ifTrue: [^nil].
	stream := WriteStream on: String new.
	stream nextPutAll: 'date '''.
	self
		printDate: aDate
		isoFormatOn: stream.
	stream nextPutAll: ''''.
	^stream contents.