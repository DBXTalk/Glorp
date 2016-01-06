cursors
cursorFor: answerStream

	answerStream == #noAnswerStream ifTrue: [^#() readStream].
	answerStream == #noMoreAnswers ifTrue: [^#() readStream].

	^ super cursorFor: answerStream