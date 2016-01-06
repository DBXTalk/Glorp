*Glorp-Portability
testClassLookup

	self assert: (Dialect smalltalkAt: 'Object') == Object.

	Dialect isVWWithNameSpaces ifTrue: [
		"Sneaky meta-tricks to avoid things that won't compile in non-VW dialects"
		self assert: (Dialect smalltalkAt: 'GlorpTestNamespace.GlorpTestClassInNamespace') == (Compiler evaluate: 'GlorpTestNamespace.GlorpTestClassInNamespace').
		self assert: (Dialect smalltalkAt: 'GlorpTestNamespace.GlorpTestClassInNamespace') notNil].