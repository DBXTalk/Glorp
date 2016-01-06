initialize-release
newItemsIn: aCache
	| items |
	items := super newItemsIn: aCache.
	items manager: aCache.
	^items.