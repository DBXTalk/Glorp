tests
testLargeText
	"For Access, the long test here not only fails, it messes up the driver so that other tests fail"
	(session platform class == AccessPlatform and: [session useBinding not])
		ifTrue: [^self].
	self helpTestValue: self longString.