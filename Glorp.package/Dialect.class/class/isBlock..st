general portability
isBlock: anObject
	"Return true if this is a block"
	self isVisualAge ifTrue: [^anObject isKindOf: (self smalltalkAt: #Block)].
	^anObject class == [] class