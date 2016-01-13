types
serial
	"This is the sequence based type used by Glorp."

	^self typeNamed: #serial ifAbsentPut: [GlorpSerialType new typeString: (self integer typeString)].