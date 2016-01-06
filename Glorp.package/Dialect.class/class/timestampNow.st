dates
timestampNow

	Dialect isGNU ifTrue: [^ self timestampClass dateAndTimeNow].
	(Dialect isSqueak or: [ Dialect isPharo ]) ifTrue: [^ self timestampClass current].
	Dialect isVisualWorks ifTrue: [^ self timestampClass now].
	Dialect isDolphin ifTrue: [^ self timestampClass current].
	Dialect isVisualAge ifTrue: [^ self timestampClass now].
	Dialect isObjectStudio ifTrue: [^self timestampClass now].
	self error: 'Not yet implemented'.
	^ self