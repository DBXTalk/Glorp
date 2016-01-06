accessing
createSession
	"For Oracle, we set the defaultDisplayLobSize:.
	For DB2, set the sesssion's setDataChunkSize:"

	| session |
	session := connection getSession.
	(session respondsTo: #defaultDisplayLobSize:) ifTrue: [
		session defaultDisplayLobSize: DatabaseCommand new maximumLobSizeToRetrieveDirectly]. 
	(session respondsTo: #setDataChunkSize:) ifTrue: [
		session setDataChunkSize: DatabaseCommand new maximumLobSizeToRetrieveDirectly]. 
	session blockFactor: 100.  "We don't know, so make it big"
	^session.