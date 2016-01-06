tests
testLargeWeakDictionary
	| elements size customers newElements |
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	system cachePolicy numberOfElements: 1.
	size := 2 raisedTo: 14.
	customers := OrderedCollection new: size.
	1 to: size do: [:i | | cust |
		cust := GlorpCustomer new.
		customers add: cust.
		cache at: i insert: cust].
	elements := cache numberOfElements.
	self assert: elements = (2 raisedTo: 14).
	customers := nil.
	Dialect garbageCollect.
	(Delay forSeconds: 2) wait.
	Dialect garbageCollect.
	(Delay forSeconds: 1) wait.
	newElements := cache numberOfElements.
	self assert: newElements = 1.