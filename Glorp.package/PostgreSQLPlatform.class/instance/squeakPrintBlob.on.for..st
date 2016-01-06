conversion-strings
squeakPrintBlob: aByteArray on: aStream for: aType

	aStream nextPutAll: 'E'''.
	aByteArray do: [:each |
		aStream nextPutAll: '\\'.
		aStream nextPutAll: (each asInteger printPaddedWith: $0 to: 3 base: 8 )].
	aStream nextPutAll: '''::bytea'.