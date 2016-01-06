dates
newTimestampFromDate: aDate time: aTime

	self isVisualWorks ifTrue: [^self timestampClass fromDate: aDate andTime: aTime].
	self isPharo ifTrue: [ ^self timestampClass date: aDate time: aTime ].
	self error: 'Not yet implemented'