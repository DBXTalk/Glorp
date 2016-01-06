*Glorp-Portability
testDescriptorWithNamespace

	| descriptor testCaseClass |
	Dialect isVWWithNameSpaces ifFalse: [^self].
	system := GlorpDescriptorSystemWithNamespaces new.
	testCaseClass := 'GlorpTestNamespace.GlorpTestClassInNamespace' asQualifiedReference value.
	descriptor := system descriptorFor: testCaseClass.
	self assert: descriptor describedClass == testCaseClass.