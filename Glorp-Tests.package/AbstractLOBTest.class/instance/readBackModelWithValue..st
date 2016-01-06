private
readBackModelWithValue: anObject
	"For SQL-Server, use CONVERT (which is easier than CAST for now), with = instead of LIKE."
	
	^self platform isSQLServerPlatform
		ifTrue:
			[| converted |
			converted := self convertToTypeFrom: anObject.
			session
				readOneOf: GlorpTypeTestsModelClass
				where: [:each | each test = converted]]
		ifFalse:
			[session
				readOneOf: GlorpTypeTestsModelClass
				where: [:each | each test like: anObject]]

	"^session
		readOneOf: GlorpTypeTestsModelClass
		where: [:each | each test like: (Cast value: anObject as: type queryType)]."