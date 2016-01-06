types
text
	^self typeNamed: #text ifAbsentPut: [GlorpTextType new typeString: 'text']