types
serial

	^self typeNamed: #serial ifAbsentPut: [GlorpSerialType new typeString: 'autoincrement'].