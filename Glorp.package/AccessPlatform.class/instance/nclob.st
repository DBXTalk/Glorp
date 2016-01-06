types
nclob
	"Access uses the same type for strings and unicode strings."

	^self typeNamed: #nclob ifAbsentPut: [GlorpClobType new typeString: 'memo']