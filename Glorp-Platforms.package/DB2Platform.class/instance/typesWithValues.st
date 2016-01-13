type helpers
typesWithValues
	"Return our types list, but makes sure it has at least basic types in it"

	self date.
	self double.
	self int8.
	self decimal.
	self real.
	^super typesWithValues