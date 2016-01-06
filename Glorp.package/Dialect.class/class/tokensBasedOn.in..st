general portability
tokensBasedOn: aString in: stringToTokenize

	self isGNU ifTrue: [^ stringToTokenize subStrings: aString first].
	self isVisualWorks ifTrue: [^ stringToTokenize tokensBasedOn: aString first].
	(self isSqueak or: [self isPharo] ) ifTrue: [^ stringToTokenize findTokens: aString].
	self isDolphin ifTrue: [^ stringToTokenize subStrings: aString].
	self isVisualAge ifTrue: [^ (stringToTokenize subStrings: aString first)].
	self isObjectStudio ifTrue: [^(stringToTokenize asArrayOfSubstringsDelimiter: aString first)].
	self error: 'not implemented yet'.
	^ self