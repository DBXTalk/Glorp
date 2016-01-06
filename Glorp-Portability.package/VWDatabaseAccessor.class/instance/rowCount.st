accessing
rowCount
	"GACK. Kind of assumes we know that we just prepared the last statement. And if the driver doesn't support it, just fake it. Very ugly. "
	self platform supportsRowCount ifFalse: [^1].
	^self driverSession rowCount.