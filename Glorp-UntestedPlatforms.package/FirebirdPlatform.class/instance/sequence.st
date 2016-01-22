types
sequence

	^self typeNamed: #sequence ifAbsentPut: [GlorpSerialType new typeString: (self integer typeString)].