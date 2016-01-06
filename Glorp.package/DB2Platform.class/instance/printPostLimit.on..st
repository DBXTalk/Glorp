database-specific
printPostLimit: anInteger on: aCommand
	
	aCommand nextPutAll: ' FETCH FIRST  '.
	anInteger printOn: aCommand.
	aCommand nextPutAll: ' ROWS ONLY '