support
checkCacheFor: aBlock
	"Check to make sure the cache satisfies the criteria. Since this relies on unpredictable finalization, do up to 10 garbage collect then wait iterations. If it's true before that, return early, but if it's not true at the end, fail"
	self assert: (self doesCacheSatisfy: aBlock).