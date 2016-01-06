support
doesCacheSatisfy: aBlock
	10
		timesRepeat:
			[Dialect garbageCollect.
			(Delay forMilliseconds: 100) wait.
			aBlock value ifTrue: [^true]].
	^false.