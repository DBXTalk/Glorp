dates
supportsMillisecondsInTimes

	self isGNU ifTrue: [^ false].
	self isVisualWorks ifTrue: [^ false].
	self isSqueak ifTrue: [^false].
	self isPharo ifTrue: [^true].
	self isDolphin ifTrue: [^ true].
	self isVisualAge ifTrue: [^ true].
	self isObjectStudio ifTrue: [^true]. "Sort of. Supports hundredths of a second"
	^ self