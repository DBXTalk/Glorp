tests
testUnreferencedObjectsAreRemoved

	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	system cachePolicy numberOfElements: 0.
	cache at: 3 insert: GlorpCustomer new.
	self
		checkCacheFor: [(cache containsObjectForClass: GlorpCustomer key: 3) not].