api/queries
readManyOf: aClass orderBy: aCriteria
	"readManyOf: and returningManyOf: are synonyms of read:. This now seems more natural to me, to be consistent with session API."

	self deprecated: #(#version '7.10' #sunset '8.0' #use #read:orderBy:).
	^self read: aClass orderBy: aCriteria