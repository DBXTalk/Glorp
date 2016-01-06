general portability
isNamespaceAware
	isNamespaceAware isNil ifTrue: [isNamespaceAware := self basicIsVisualWorks].
	^isNamespaceAware