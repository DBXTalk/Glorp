cursors
cursorFor: aStream
	"basicExecuteSQLString: binding: sets returnResult: to false if aString does not begin with 'SELECT' but
its non-VA-specific caller executeSQLString:binding: sends upToEnd to what it returns, expecting the more
usual behaviour of returnResult always being true on that branch.  Thu we return an empty readStream, like
the VW implementation of this method in other no-return cases."

	aStream == self ifTrue: [^#() readStream].
	aStream onFinalizeDo: #close.
	"In V8Beta, the finalize cycle has not always been run by the time the database' databaseMgr has been nilled,
	causing a DNU when trying to get the error block (that it will not run).  If this persists, replace #close above with
		Message selector: #closeIfError: arguments: (Array with: aStream errorBlock)
	so we get the block when we know we can."
	^super cursorFor: aStream.