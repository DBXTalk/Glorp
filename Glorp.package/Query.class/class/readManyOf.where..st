*Glorp
readManyOf: aClass where: anExpression
	"readManyOf: and returningManyOf: are synonyms of read:. This now seems more natural to me, to be consistent with session API."

	self deprecated: #(#version '7.10' #sunset '8.0' #use #read:where:).
	^self read: aClass where: anExpression