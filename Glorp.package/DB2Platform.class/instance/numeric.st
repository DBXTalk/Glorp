types
numeric
	"DB2 NUMERIC columns default to precision=5, scale=0."
	
	^self typeNamed: #numeric ifAbsentPut: [GlorpNumericType new typeString: 'DECIMAL']