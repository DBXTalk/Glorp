conversion-strings
padString: aString for: aType 
	| padding |
	aString isNil ifTrue: [^nil].
	(self usesNullForEmptyStrings and: [aString isEmpty]) ifTrue: [^nil].
	aString size > aType width 
				ifTrue: [^aString copyFrom: 1 to: aType width].
				
	aType isVariableWidth ifTrue: [^aString].
	padding := String new: aType width - aString size.
	padding atAllPut: 32 asCharacter.
	^aString , padding