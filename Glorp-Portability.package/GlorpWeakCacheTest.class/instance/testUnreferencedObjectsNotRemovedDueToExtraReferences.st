tests
testUnreferencedObjectsNotRemovedDueToExtraReferences
	Dialect isVWWithNameSpaces ifFalse: [ ^self ].
	cache at: 3 insert: GlorpCustomer new.
	self checkCacheExhaustivelyFor: [(cache containsObjectForClass: GlorpCustomer key: 3)].