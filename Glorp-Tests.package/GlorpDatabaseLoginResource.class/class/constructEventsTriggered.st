as yet unclassified
constructEventsTriggered
	^(super constructEventsTriggered)
		add: #changedDefaultLogin;
		yourself