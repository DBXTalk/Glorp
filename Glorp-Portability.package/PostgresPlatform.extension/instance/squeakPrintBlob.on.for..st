*Glorp-Portability
squeakPrintBlob: aByteArray on: aStream for: aType

	aStream nextPut: $'.
	aByteArray do: [:each |
		aStream nextPutAll: '\\'.
		each asInteger printOn: aStream paddedWith: $0 to: 3 base: 8].
	aStream nextPutAll: '''::bytea'.