dates
supportsMillisecondsInTimeStamps

	self isGNU ifTrue: [^ false].
	self isVisualWorks ifTrue: [^ true].
	self isDolphin ifTrue: [^ true].
	self isVisualAge ifTrue: [^ true].
	self isObjectStudio ifTrue: [^true].
	self isPharo ifTrue: [  ^false ].
	self error: 'not yet implemented'.
	^ self