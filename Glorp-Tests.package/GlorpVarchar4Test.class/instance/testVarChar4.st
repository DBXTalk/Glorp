tests
testVarChar4
	stType := String.
	self helpTestValue: nil.
	self helpTestValue: '' compareWith: [:read :original |
		self platform usesNullForEmptyStrings ifTrue: [read = nil] ifFalse: [read = original]].
	self helpTestValue: 'a'.
	self helpTestValue: 'ab'.
	self helpTestValue: 'abc'.
	self helpTestValue: 'abcd'.
	stType := Symbol.
	self helpTestValue: #abcd.
	stType := nil.

	self platform autoTrimsStringsLongerThanColumnSize ifFalse: [ 
		self should: [self helpTestInvalidValue: 'abcde'] raise: GlorpDatabaseWriteError.
	]