accessing
driverSession
	driverSession isNil ifTrue: [driverSession := self createSession].
	^driverSession.