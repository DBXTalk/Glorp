general portability
fitHashIntoSmallInteger: aNumber
	"Truncate the number to fit into smallinteger range. Mostly useful for ObjectStudio where hashes have to be 16 bits or less"
	^Dialect isObjectStudio ifTrue: [aNumber hash] ifFalse: [aNumber]