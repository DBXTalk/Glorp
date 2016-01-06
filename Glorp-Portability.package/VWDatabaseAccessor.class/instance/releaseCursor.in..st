cursors
releaseCursor: aCursor in: aPreparedStatement
	"Release the cursor. We're trapping exceptions, so return true or false to indicate success/failure"
	aCursor isNil ifTrue: [^self].
	aPreparedStatement isNil ifTrue: [
		 ^(aCursor class ~~ ReadStream) ifTrue: [self halt] ifFalse: [self]].
	[aPreparedStatement statement isNil or: [aPreparedStatement statement answer == #noMoreAnswers]] whileFalse.
	^[aCursor close. true] on: Dialect error do: [:ex | ex return: false].