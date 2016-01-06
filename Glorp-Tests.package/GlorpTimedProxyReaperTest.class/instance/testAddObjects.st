tests
testAddObjects

	| proxies |
	Dialect isVisualAge ifTrue: [Transcript cr; show: 'Avoiding ', self class name, '>>testAddObjects for VisualAge'. ^self].
	Dialect isObjectStudio ifTrue: [Transcript cr; show: 'Avoiding ', self class name, '>>testAddObjects for ObjectStudio'. ^self].
	proxies := OrderedCollection new.
	1 to: 10 do: [:index | 
		proxies add: (TimedProxy readOneOf: Object where: nil in: nil).
		proxies last glorpSecondsToLive: 1000.
		reaper add: proxies last].

	(Delay forSeconds: 1) wait.
	proxies do: [:proxy | self should: [reaper includes: proxy]].