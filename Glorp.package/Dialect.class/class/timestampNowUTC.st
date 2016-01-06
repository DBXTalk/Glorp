dates
timestampNowUTC

	Dialect isGNU ifTrue: [^ self timestampClass utcDateAndTimeNow].
	Dialect isVisualWorks ifTrue: [^ (self smalltalkAt: #Timestamp) fromSeconds: Time secondClock].
	Dialect isDolphin ifTrue: [self error: 'not supported'.].
	self error: 'Not yet implemented'.
	^ self