executing
basicExecuteSQLString: aString returnResult: returnResult binding: aBindingArray doing: aBlock

	^connection execSql: aString.