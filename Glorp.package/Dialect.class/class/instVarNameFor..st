reflection
instVarNameFor: aName

	Dialect isGNU ifTrue: [^ aName asSymbol].
	^ aName asString