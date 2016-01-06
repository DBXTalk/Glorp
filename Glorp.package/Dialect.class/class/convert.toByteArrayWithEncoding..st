strings
convert: aString toByteArrayWithEncoding: encodingName
	self isVisualWorks ifTrue: [^aString asByteArrayEncoding: encodingName].
	self isPharo ifTrue: [ ^aString convertToEncoding: encodingName ].
	self error: 'Not yet implemented'