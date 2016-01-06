tests
testUnreferencedExcessObjectsAreRemoved
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	system cachePolicy numberOfElements: 1.
	cache at: 3 insert: GlorpCustomer new.
	cache at: 4 insert: GlorpCustomer new.
	self checkCacheFor: [(cache containsObjectForClass: GlorpCustomer key: 3) not].
	self assert: (cache containsObjectForClass: GlorpCustomer key: 4).