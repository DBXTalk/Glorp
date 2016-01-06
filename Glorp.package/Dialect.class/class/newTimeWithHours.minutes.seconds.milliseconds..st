dates
newTimeWithHours: hours minutes: minutes seconds: seconds milliseconds: milliseconds

	self isGNU ifTrue: [^ Time fromSeconds: hours * 60 * 60 + (minutes * 60) + seconds].
	(self isVisualWorks or: [self isSqueak or: [ self isPharo ]]) ifTrue: [^ Time fromSeconds: hours * 60 * 60 + (minutes * 60) + seconds].
	self isVisualAge
		ifTrue: [
			^ Time fromMilliseconds: ((hours * 60 * 60) + (minutes * 60) + seconds) * 1000 + milliseconds
		].
	self isObjectStudio ifTrue: [^Time hour: hours minute: minutes second: seconds millisecond: milliseconds].
	self error: 'Not implemented yet'.
	^ self