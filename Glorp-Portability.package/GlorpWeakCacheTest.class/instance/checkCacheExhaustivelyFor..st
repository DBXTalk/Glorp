support
checkCacheExhaustivelyFor: aBlock
	"Check to make sure the cache satisfies the criteria. Since this relies on unpredictable finalization, do a full 10 garbage collect then wait iterations. Don't return early, because we're checking to see that finalization *doesn't* happen"
	self assert: (self doesCacheExhaustivelySatisfy: aBlock).