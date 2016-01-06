support
doesCacheExhaustivelySatisfy: aBlock
	| result |
	result := false.
	10
		timesRepeat:
			[Dialect garbageCollect.
			(Delay forMilliseconds: 100) wait.
			result := aBlock value].
	^result.