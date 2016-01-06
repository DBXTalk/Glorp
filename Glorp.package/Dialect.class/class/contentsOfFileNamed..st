files
contentsOfFileNamed: aString 
	"Given a text file name, read its contents"

	| stream contents fileClass |
	Dialect isVisualWorks ifTrue: [^aString asFilename contentsOfEntireFile].
	Dialect isSqueak ifTrue: [
		stream := (Dialect smalltalkAt: #CrLfFileStream) oldFileNamed: aString.
		[contents := stream contents] ensure: [stream close].
		^contents].
	
	Dialect isPharo ifTrue: [
		stream := (Dialect smalltalkAt: #MultiByteFileStream) oldFileNamed: aString.
		[contents := stream contents] ensure: [stream close].
		^contents ].

	fileClass := Dialect isVisualAge 
				ifTrue: [self smalltalkAt: #CfsReadFileStream]
				ifFalse: 
					[Dialect isDolphin ifTrue: [self smalltalkAt: #File] ifFalse: [self halt]].
	stream := fileClass read: aString.
	[contents := stream contents] ensure: [stream close].
	^contents