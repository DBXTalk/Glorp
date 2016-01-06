dates
readFixedPointFrom: aString

	self isVisualWorks ifTrue: [^ (self smalltalkAt: #FixedPoint) readFrom: (ReadStream on: aString)].
	(self isDolphin or: [self isSqueak or: [self isPharo]]) ifTrue: [^ Number readFrom: (ReadStream on: aString , 's')].
	self isGNU
		ifTrue: [
			^ (Number readFrom: (ReadStream on: aString)) asScaledDecimal:
				aString size - (aString indexOf: $. ifAbsent: [aString size.])
		].
	self isVisualAge ifTrue: [ ^(self smalltalkAt: #Decimal) fromString: aString].
	self isObjectStudio ifTrue: [^(self smalltalkAt: #Decimal) newString: aString].
	self error: 'not implemented'.
	^ self