executing
innerExceptionFor: exception
	(exception parameter isKindOf: GenericException) ifTrue: [^exception parameter].
	^exception.