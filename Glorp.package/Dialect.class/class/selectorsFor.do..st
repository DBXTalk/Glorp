reflection
selectorsFor: aClass do: aBlock
	"Stupid dialects"
	self isVisualWorks ifTrue: [^aClass selectorsAndMethodsDo: [:key :value | aBlock value: key]].
	self isVisualAge ifTrue: [^ aClass methodDictionary keysDo: aBlock].
	(self isSqueak or: [ self isPharo ])ifTrue: [^aClass methodDict keysDo: aBlock].
	self error: 'Not yet implemented'