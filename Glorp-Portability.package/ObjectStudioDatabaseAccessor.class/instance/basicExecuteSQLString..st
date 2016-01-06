executing
basicExecuteSQLString: aString
	| result cursor records |
	result := connection execSql: aString.
	records := result records.
	"Fix up nulls"
	records do: [:each |
		1 to: each size do: [:i |
			(each at: i) == #'(NULL)' ifTrue: [each at: i put: nil]]].
	cursor := self cursorFor: (ReadStream on: result records).
	cursor statement: result.
	^cursor.