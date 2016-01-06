login
initializeODBCForMultipleResultSets: aConnection
	"Initialize an ODBC Connection for multiple result sets. This would be cleaner but less portable if we implemented it in the ODBCConnectionClass. Be fairly paranoid about the connection being able to understand these messages, which also presumably guarantees it is in fact a SQL Server connection, or at least a connection which will not fail if we try to set that option, which is supposed to work if we set it on e.g. ODBC to Oracle, it just won't do anything"
	| xif |
	(aConnection isKindOf: (Dialect smalltalkAt: #ODBCConnection ifAbsent: [^self])) ifFalse: [^self].
	xif := aConnection class xif.
	((aConnection respondsTo: #setConnectionOption:value:)
		and: [xif respondsTo: #SQL_MARS_ENABLED_YES])
			ifTrue: 
				[aConnection setConnectionOption: #SQL_COPT_SS_MARS_ENABLED
					value: xif SQL_MARS_ENABLED_YES].