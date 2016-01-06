types
memo

	^self typeNamed: #memo ifAbsentPut: [GlorpClobType new typeString: 'memo'].