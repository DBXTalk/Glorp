initalize-release
initialize
	super initialize.
	count := 0.
	sequenceIncrement := 1.
	"This seems to hang on the semaphore in ObjectStudio. Fake around it"
	accessProtect := Dialect isObjectStudio ifTrue: [nil] ifFalse: [Semaphore forMutualExclusion].