class lookup
smalltalkAssociationAt: aName ifAbsent: aBlock

	self isVisualWorks ifTrue: [^ aName asQualifiedReference].
	^ Smalltalk associationAt: aName asSymbol ifAbsent: aBlock