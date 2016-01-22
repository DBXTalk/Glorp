testing
canBind: aValue to: aType
	(Dialect isVisualWorks and: [aValue class == Dialect fixedPointClass]) ifTrue: [^false].
	^super canBind: aValue to: aType.