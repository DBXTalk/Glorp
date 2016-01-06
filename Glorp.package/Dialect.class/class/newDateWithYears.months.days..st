dates
newDateWithYears: years months: months days: days

	(self isVisualWorks or: [self isSqueak]) ifTrue: [^ Date newDay: days monthNumber: months year: years].
	self isPharo ifTrue: [ ^Date newDay: days month: months year: years ].
	self isGNU ifTrue: [^ Date newDay: days monthIndex: months year: years].
	self isVisualAge ifTrue: [^Date newDay: days monthIndex: months year: years].
	self isObjectStudio ifTrue: [^Date newDay: days imonth: months year: years].
	self error: 'not implemented'.
	^ self