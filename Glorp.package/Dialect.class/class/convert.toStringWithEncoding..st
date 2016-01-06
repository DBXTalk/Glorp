strings
convert: aByteArray toStringWithEncoding: encodingName
	self isVisualWorks ifTrue: [^aByteArray asStringEncoding: encodingName].
	self isPharo ifTrue: [ ^aByteArray asString convertToEncoding: encodingName ].
	self error: 'Not yet implemented'