general portability
argumentCountFor: aBlock

	Dialect isGNU ifTrue: [^ self error: 'not implemented yet'].
	Dialect isVisualWorks ifTrue: [^ aBlock numArgs].
	Dialect isVisualAge ifTrue: [^ aBlock argumentCount].
	Dialect isDolphin ifTrue: [^ aBlock argumentCount].
	Dialect isSqueak ifTrue: [^self error: 'not implemented yet'].
	Dialect isPharo ifTrue: [ ^aBlock argumentCount ].
	Dialect isObjectStudio ifTrue: [^aBlock numArgs].
	self error: 'not implemented yet'.
	^ self