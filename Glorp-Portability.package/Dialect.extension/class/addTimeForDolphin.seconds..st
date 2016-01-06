*Glorp-Portability
addTimeForDolphin: aTime seconds: seconds

	"Dolphin's time/date arithmetic is pretty weak, especially for timestamps. Hack around it. This is likely only to work for seconds <24 hours"

	| result |

	^ aTime class == Time
		ifTrue: [Time fromMilliseconds: (aTime asMilliseconds + (seconds * 1000)) \\ 86400000.]
		ifFalse: [
			result := self timestampClass date: aTime date
				time: (self addTimeForDolphin: aTime time seconds: seconds).
			(seconds > 0 and: [result time < aTime time.])
				ifTrue: [result date: (result date addDays: 1).].
			(seconds < 0 and: [result time > aTime time.])
				ifTrue: [result date: (result date addDays: -1).].
			^ result
		]