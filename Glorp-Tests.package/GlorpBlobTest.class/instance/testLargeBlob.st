tests
testLargeBlob
	| blob |
	blob := self mediumlargeBlob.
	(session platform useBinding not and: [blob size > session platform maximumQueryValueSize])
		ifTrue: [Transcript cr; show: '******* Skipping large unbound blob test']
		ifFalse: [self helpTestValue: blob].
	blob := self largeBlob.
	(session platform useBinding not and: [blob size > session platform maximumQueryValueSize])
		ifFalse: [self helpTestValue: blob].