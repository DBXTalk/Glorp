accessing
createSessionFor: aCommand
	"For Oracle, we set the defaultDisplayLobSize:.
	For DB2, set the sesssion's setDataChunkSize:"

	| session types |
	session := connection getSession.
	(session respondsTo: #defaultDisplayLobSize:) ifTrue: [
		session defaultDisplayLobSize: aCommand maximumLobSizeToRetrieveDirectly]. 
	(session respondsTo: #setDataChunkSize:) ifTrue: [
		session setDataChunkSize: DatabaseCommand new maximumLobSizeToRetrieveDirectly]. 
	session blockFactor: aCommand blockFactor.
	types := aCommand bindingTypesForEXDI.
	types isEmpty ifFalse: [session bindTemplate: types].
	^session.