tests
testEphemeronDictionary
	| value dict done |
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	value := Object new.
	dict := (Dialect smalltalkAt: #EphemeronDictionary) new.
	dict at: value put: 'abc'.
	Dialect garbageCollect.
	value := nil.
	done := false.
	self should:
		[10	timesRepeat:
			[done ifFalse: [
				Dialect garbageCollect.
				(Delay forMilliseconds: 100) wait.
				done := dict size = 0]].
			 done].