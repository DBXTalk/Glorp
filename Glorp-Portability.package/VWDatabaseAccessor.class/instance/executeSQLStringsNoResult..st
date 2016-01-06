executing
executeSQLStringsNoResult: aString
	"Executing an empty string returns an empty result, which then DNUs when sent #first, arguably a bug but while it exists we must avoid it.  We therefore check the supplied parameter size (to check for nil or empty) and exit quietly if so."

	aString size = 0 ifTrue: [^self].
	(aString tokensBasedOn: $;)
		do: [:each | each notEmpty ifTrue: [self executeSQLStringNoResult: each]].