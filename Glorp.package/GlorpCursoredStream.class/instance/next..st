accessing
next: anInteger
	| result |
	Dialect isObjectStudio ifFalse: [^super next: anInteger].
	result := OrderedCollection new: anInteger.
	anInteger timesRepeat: [result add: self next].
	^result