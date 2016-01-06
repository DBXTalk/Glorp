general portability
weakValueDictionaryClass

	Dialect isVisualWorks ifTrue: [^self smalltalkAt: #EphemeralValueDictionary].
	(Dialect isSqueak or: [Dialect isPharo]) ifTrue: [^self smalltalkAt: #WeakValueDictionary].
	self error: 'Not yet implemented for this dialect'