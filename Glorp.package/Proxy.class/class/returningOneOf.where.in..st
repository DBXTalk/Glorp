*Glorp
returningOneOf: aClass where: aBlock in: aSession
	"returningOneOf: is a synonyms of readOneOf:. This now seems more natural to me, to be consistent with session API."

	self deprecated: #(#version '7.10' #sunset '8.0' #use #readOneOf:where:).
	^self readOneOf: aClass where: aBlock in: aSession