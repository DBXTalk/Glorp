initialize-release
initialize
	"My schema supplies the schema to my accessor, to its session and to that session's descriptor system.  Since a DatabaseTable's schema is initialized to the empty string, not nil (and that of a StoreLogin must never be nil), initialize to the empty string here, so that calling code need not check for nil.
	Initialize secure to true, so that only if the creating code then explicitly resets it to false will the login keep the password in the image beyond the point of first use."

	schema := ''.
	secure := false.