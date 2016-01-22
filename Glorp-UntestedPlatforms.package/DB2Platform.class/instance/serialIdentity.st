types
serialIdentity
	"This is the identity column type used by DB2, but not supported by Glorp. It is here just
	so that we can recognize identity columns when they are encountered."

	^self typeNamed: #serialIdentity ifAbsentPut: [DB2IdentityType new typeString: 'integer generated always as identity '].