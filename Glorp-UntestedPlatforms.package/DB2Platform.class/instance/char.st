types
char
	^self typeNamed: #char ifAbsentPut: [GlorpCharType new typeString: 'CHARACTER'].