dates
timeOffsetFromGMT

	self isGNU ifTrue: [Time timezoneBias / (60 * 60).].
	self isVisualWorks ifTrue: [^ (self smalltalkAt: #TimeZone) default secondsFromGMT / (60 * 60)].
	^ 0