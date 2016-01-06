dates
addSeconds: seconds to: aTime

	self isVisualWorks ifTrue: [^ Time fromSeconds: aTime asSeconds + seconds].
	self isDolphin ifTrue: [^ self addTimeForDolphin: aTime seconds: seconds].
	self isPharo ifTrue: [^ aTime addSeconds: seconds].
	self isGNU ifTrue: [^ aTime addSeconds: seconds].
	self isVisualAge ifTrue: [^Time fromSeconds: aTime asSeconds + seconds].
	self error: 'not implemented'.
	^ self