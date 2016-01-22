types
longText

	^self typeNamed: #longText ifAbsentPut: [GlorpClobType new typeString: 'memo'].