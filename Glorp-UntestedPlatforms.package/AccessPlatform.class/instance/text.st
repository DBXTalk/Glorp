types
text

	^self typeNamed: #text ifAbsentPut: [GlorpClobType new typeString: 'longtext'].