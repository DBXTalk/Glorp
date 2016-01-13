conversion-strings
printBlob: aByteArray on: aStream for: aType
	aByteArray isNil ifTrue: [^aStream nextPutAll: 'NULL'].
	aStream nextPutAll: 'BLOB(X'''.
	aByteArray do: [:each |
		each printOn: aStream paddedWith: $0 to: 2 base: 16].
	aStream nextPutAll: ''') '.
"	aStream nextPutAll: 'CAST(X'''.
	aByteArray do: [:each |
		each printOn: aStream paddedWith: $0 to: 2 base: 16].
	aStream nextPutAll: ''' AS BLOB) '."