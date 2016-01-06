api/queries
readManyOf: aClass where: aBlock limit: anInteger
	"readManyOf: and returningManyOf: are synonyms of read:. This now seems more natural to me, to be consistent with session API."

	self deprecated: #(#version '7.10' #sunset '8.0' #use #read:where:limit:).
	^self read: aClass where: aBlock limit: anInteger