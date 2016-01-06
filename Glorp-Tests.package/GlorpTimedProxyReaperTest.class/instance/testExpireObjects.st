tests
testExpireObjects

	| proxies |
	Dialect isVisualAge ifTrue: [Transcript cr; show: 'Avoiding ', self class name, '>>testExpireObjects for VisualAge'. ^self].
	Dialect isObjectStudio ifTrue: [Transcript cr; show: 'Avoiding t', self class name, '>>estExpireObjects for ObjectStudio'. ^self].

	proxies := OrderedCollection new.
	1 to: 10 do: [:index | 
		proxies add: (TimedProxy readOneOf: Object where: nil in: nil).
		proxies last glorpSecondsToLive: 1.
		reaper add: proxies last].

	(Delay forSeconds: 5) wait.
	proxies do: [:proxy | self shouldnt: [reaper includes: proxy]].