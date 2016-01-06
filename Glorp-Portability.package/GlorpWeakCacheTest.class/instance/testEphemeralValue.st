tests
testEphemeralValue
	| value ephemeron |
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	value := Object new.
	ephemeron := (Dialect smalltalkAt: #EphemeralValue) key: 'abc' value: value.
	ephemeron manager: self.
	Dialect garbageCollect.
	value := nil.
	self should: [10 timesRepeat: [
		mourned ifFalse: [Dialect garbageCollect.
		(Delay forMilliseconds: 100) wait]].
		mourned].