types
nclob

	^self typeNamed: #nclob ifAbsentPut: [GlorpClobType new typeString: 'dbclob'].