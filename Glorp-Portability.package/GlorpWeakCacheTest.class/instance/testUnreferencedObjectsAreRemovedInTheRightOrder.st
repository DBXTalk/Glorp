tests
testUnreferencedObjectsAreRemovedInTheRightOrder
	| customer |
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	system cachePolicy numberOfElements: 1.
	cache at: 3 insert: GlorpCustomer new.
	cache at: 4 insert: GlorpCustomer new.
	customer := cache lookupClass: GlorpCustomer key: 3.
	self deny: customer isNil.
	cache at: 3 insert: customer.
	self checkCacheFor: [(cache containsObjectForClass: GlorpCustomer key: 4) not].
	self assert: (cache containsObjectForClass: GlorpCustomer key: 3).