executing
basicExecuteSQLString: aString binding: aBindingArray 
	^self basicExecuteSQLString: aString returnResult: true binding: aBindingArray doing: [].