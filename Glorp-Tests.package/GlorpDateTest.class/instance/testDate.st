tests
testDate

	| date |
	Dialect isVisualAge ifTrue: [Transcript cr; show: 'Avoiding date test for VisualAge'. ^self].
	date := Date today.
	stType := Date.

	self helpTestValue: date.
	self helpTestValue: nil.