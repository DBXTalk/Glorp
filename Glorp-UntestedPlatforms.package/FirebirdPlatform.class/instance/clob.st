types
clob

	^self typeNamed: #clob ifAbsentPut: [GlorpClobType new typeString: 'blob sub_type text'].