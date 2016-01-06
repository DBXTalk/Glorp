*Glorp
returningOneOf: aClass
	"Backward-compatibility, since we changed the class name."
	"returningOneOf: is a synonym of readOneOf:. This now seems more natural to me, to be consistent with session API."

	self deprecated: #(#version '7.10' #sunset '8.0' #use #readOneOf:).
	^self readOneOf: aClass.