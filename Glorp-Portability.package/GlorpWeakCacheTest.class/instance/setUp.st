support
setUp
	super setUp.
	system cachePolicy: WeakVWCachePolicy new.
	mourned := false.