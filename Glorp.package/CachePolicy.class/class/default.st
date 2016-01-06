*Glorp
default
	"Use of the WeakVWCache is tied in with Ephemera which we do not expect to get working in VW3."

	Dialect isVWWithNameSpaces ifTrue: [^WeakVWCachePolicy new].
	^self new