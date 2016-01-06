conversion-strings
convertByteArrayToSQLString: aByteArray for: aType

	aByteArray ifNil: [ ^nil ].
	^aByteArray asString