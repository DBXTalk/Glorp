conversion
convertBlobData: aData for: aType
	"From standard Store getBlobData called in writeSession;  Firebird seems to need it.  Glorp needs to think that two such streams on the same data are equal."

	^EqualOnContentReadStream on: aData