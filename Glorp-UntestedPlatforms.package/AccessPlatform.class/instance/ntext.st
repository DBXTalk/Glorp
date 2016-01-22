types
ntext
	"Access uses the same type for strings and unicode strings."

	^self typeNamed: #ntext ifAbsentPut: [GlorpClobType new typeString: 'longtext']