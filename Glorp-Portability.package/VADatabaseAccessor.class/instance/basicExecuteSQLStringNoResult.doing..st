As yet unclassified
basicExecuteSQLStringNoResult: aString doing: aBlock
	^self basicExecuteSQLString: aString returnResult: false binding: nil doing: aBlock.