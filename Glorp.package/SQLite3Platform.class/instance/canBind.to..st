constants
canBind: aValue to: aType
	"See #supportsVariableSizedNumerics comment."

	(Dialect isVisualWorks and: [aValue class == Dialect fixedPointClass]) ifTrue: [^false].
	^super canBind: aValue to: aType