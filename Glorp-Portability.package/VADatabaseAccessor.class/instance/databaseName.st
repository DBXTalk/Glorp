As yet unclassified
databaseName
	"connect string looks like  hostname:portNumber_db-name. :portNumber is optional.
	If the string is zero, return nil."

	| str dbIndex |
	str := self currentLogin connectString.
	dbIndex := str indexOf: $_.
	^str copyFrom: dbIndex + 1 to: str size