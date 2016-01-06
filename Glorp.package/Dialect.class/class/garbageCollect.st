general portability
garbageCollect

	Dialect isGNU ifTrue: [^ (self smalltalkAt: #ObjectMemory) globalGarbageCollect].
	Dialect isVisualWorks ifTrue: [^ (self smalltalkAt: #ObjectMemory) quickGC].
	Dialect isVisualAge ifTrue: [^ (self smalltalkAt: #System) globalGarbageCollect].
	(Dialect isSqueak or: [ Dialect isPharo ]) ifTrue: [^Smalltalk garbageCollect].
	Dialect isObjectStudio ifTrue: [^(self smalltalkAt: #System) garbageCollect].
	self error: 'not implemented yet'.
	^ self