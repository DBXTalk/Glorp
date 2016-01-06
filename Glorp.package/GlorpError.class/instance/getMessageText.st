accessing
getMessageText
	"This is horribly ugly. Not only are dialects inconsistent, but behaviour between types of exceptions is inconsistent within dialects"
	
	Dialect isVisualWorks ifTrue: [^self getVisualWorksMessageText].
	Dialect isVisualAge ifTrue: [^self getVisualAgeMessageText].
	(Dialect isSqueak or: [Dialect isPharo]) ifTrue: [^self databaseError].
	^self printString.