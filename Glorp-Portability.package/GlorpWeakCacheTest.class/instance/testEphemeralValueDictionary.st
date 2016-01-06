tests
testEphemeralValueDictionary
	| value dict done |
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	value := Object new.
	dict := WeakVWCachePolicy new dictionaryClass new.
	dict at: 'abc' put: value.
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