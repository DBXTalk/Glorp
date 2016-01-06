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

	"This overlong-means-invalid check fails on SQLite where column length limits are unenforced."
	self should: [self helpTestInvalidValue: 'abcde'] raise: GlorpDatabaseWriteError.