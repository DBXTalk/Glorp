testing
supportsDecimalsOnAllNumerics
	"Return true if a general 'numeric' type will allow numbers after the decimal place.
	NUMERIC(5) will not store 321.12 (it'll keep 321.)."
	^false.