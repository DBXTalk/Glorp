constants
sqlTextCurrentServerUTCTimestamp
	"This isn't UTC, but ACCESS is a local server anyway, and doesn't appear to support UTC."

	^'SELECT NOW()'