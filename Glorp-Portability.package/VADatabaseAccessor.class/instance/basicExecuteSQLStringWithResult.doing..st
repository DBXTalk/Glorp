As yet unclassified
basicExecuteSQLStringWithResult: aString doing: aBlock
	"^<AbtResultTable | self> This VA-specific method returns an AbtResultTable unless it fails.  Later,
add a binding: parameter and call resultTableFromQuerySpec:withValues:ifError:"

	| resultTable |
	resultTable := connection
		resultTableFromQuerySpec: ((Smalltalk at: #AbtQuerySpec) new statement: aString)
		ifError: [:err | GlorpError signalWith: err].
	^resultTable isAbtError
		ifTrue: 
			[GlorpError signalWith: resultTable.
			#() readStream]
		ifFalse:
			[aBlock value.
			resultTable]