types
varchar
	^self typeNamed: #varchar ifAbsentPut: [GlorpVarCharType new typeString: 'VARCHAR'].