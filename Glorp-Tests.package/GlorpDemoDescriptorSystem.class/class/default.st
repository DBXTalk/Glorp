*GlorpTest
default
	Default isNil ifTrue: [Default := self new].
	^Default