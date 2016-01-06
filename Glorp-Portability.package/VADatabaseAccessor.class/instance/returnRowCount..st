accessing
returnRowCount: aBoolean

	connection isNil ifFalse: [connection queryRowCount: true].