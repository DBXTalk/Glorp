As yet unclassified
serverName
	"connect string looks like  hostname:portNumber_db-name. The :portNumber is optional;
	for the moment, we ignore it.  If the hostName is empty, return nil."

	| str dbIndex "portIndex index" |
	str := self currentLogin connectString.
"	portIndex := index := str indexOf: $:."
	dbIndex := str indexOf: $_.
"	index = 0 ifTrue: [index := dbIndex]."
	^dbIndex = 0 ifFalse: [str copyFrom: 1 to: dbIndex - 1]