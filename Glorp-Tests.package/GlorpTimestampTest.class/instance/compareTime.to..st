tests
compareTime: read to: original
	"GNU Smalltalk seems to be quite lone in following the ANSI standard..."
	| zeroDuration max min |
	Dialect isGNU
		ifTrue: [
			zeroDuration := (Smalltalk at: #Duration) zero.
			^(read offset: zeroDuration) = (original offset: zeroDuration)].
	"MS SQL Server fails randomly because it has a resolution of 3 ms only."
	session platform class = SQLServerPlatform ifTrue: [
		max := original addMilliseconds: 3.
		min := original addMilliseconds: -3.
		^read between: min and: max].
	"Otherwise"
	^session platform supportsMillisecondsInTimes 
		ifTrue: [read = original]
		ifFalse: [read = original or: [read = (original + (-1 * original asDuration asMilliSeconds )) or: [read asSeconds = original asSeconds]]].