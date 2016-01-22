testing
supportsGroupWritingFor: aCommand
	"This is not a real change from the older driver as it never supported binding but only pretended that it did to the upper-level EXDI API, reinserting the bound values as strings into an SQL stream that it then sent unbound to the server."

	^self useBinding not and: [super supportsGroupWritingFor: aCommand]