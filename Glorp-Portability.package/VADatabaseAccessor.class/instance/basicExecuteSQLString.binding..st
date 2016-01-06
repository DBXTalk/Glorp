As yet unclassified
basicExecuteSQLString: aString binding: aBindingArray
	"VA does not return results for as many statements as VW.  Some calls that take returnResult: true in VW
do not want to return a result in the basic VA RDB framework that we call.  We therefore check the String and
only ask for a return if it is a select statement.  (This is experimental and could be reviewed.)"

	^self
		basicExecuteSQLString: aString
		returnResult: (aString copyFrom: 1 to: (6 min: aString size)) asUppercase = 'SELECT'
		binding: aBindingArray
		doing: []