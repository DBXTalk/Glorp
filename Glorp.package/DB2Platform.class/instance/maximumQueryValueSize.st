testing
maximumQueryValueSize
	"If there's a limit on how big a bound input parameter can be for a query, return it here.
	For literal strings and lobs, at least, the DB2 limit is 32K. Not sure about bound objects.
	If those can be larger, then we can indicate that fact by introducing a companion method
	later. Note that we write literal LOBs as 2-byte hex chars per byte. So, the limit is
	actually 16384-9-1, eg., blob(X'0A41') makes 9 extras."
	^16374