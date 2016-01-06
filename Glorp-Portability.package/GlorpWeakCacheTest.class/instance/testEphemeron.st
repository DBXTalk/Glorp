tests
testEphemeron
	| value ephemeron |
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	value := Object new.
	ephemeron := (Dialect smalltalkAt: #Ephemeron) key: value value: 'abc'.
	ephemeron manager: self.
	Dialect garbageCollect.
	value := nil.
	self should: [10 timesRepeat: [
		mourned ifFalse: [Dialect garbageCollect.
		(Delay forMilliseconds: 100) wait]].
		mourned].