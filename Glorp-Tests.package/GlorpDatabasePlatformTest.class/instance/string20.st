tests
string20
	| platform |
	platform := Dialect isVisualAge
		ifTrue:
			[Transcript cr; show: self class name, '>>string20: testing Oracle, not PostgreSQL'.
			OraclePlatform new]
		ifFalse: [PostgresSocketPlatform new].
	platform characterEncoding: #'utf-8'.
	^platform varchar: 20.