copying
createFor: arguments withBase: anExpression symbol: aSymbol
	| new |
	new := self copy.
	new base: anExpression.
	new symbol: aSymbol.
	new type: type.
	new arguments: arguments.
	^new.