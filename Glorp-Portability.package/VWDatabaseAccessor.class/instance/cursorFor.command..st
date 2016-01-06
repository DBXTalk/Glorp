cursors
cursorFor: answerStream command: aCommand

	| stream |
	stream := answerStream.
	answerStream == #noAnswerStream ifTrue: [
		stream := #() readStream].
	answerStream == #noMoreAnswers ifTrue: [
		stream := #() readStream].

	^ super cursorFor: stream command: aCommand