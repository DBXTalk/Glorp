conversion-strings
unpadString: aString for: aType

	aString isNil ifTrue: [^nil].
	^aType isVariableWidth 
		ifTrue: [aString]
		ifFalse: [(ReadStream on: aString) upTo: 32 asCharacter].