*GlorpTest
initialize
	"If this is VA, force the pool dictionary/namespace pragma for the test namespace to be handled. That means that subsequent packages on file-in will be able to see it. A lot of jumping through hoops for something that doesn't even get exercised in VA"

	Dialect isVisualAge ifFalse: [^self].
	(Smalltalk at: #EtAbstractMethodsBrowser) new
		rebuildNamespaceIfRequired: (Smalltalk at: #GlorpTestModels)
		askUser: false.