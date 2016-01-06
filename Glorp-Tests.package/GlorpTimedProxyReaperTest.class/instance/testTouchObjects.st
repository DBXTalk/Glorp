tests
testTouchObjects

	| proxy |
	Dialect isVisualAge ifTrue: [Transcript cr; show: 'Avoiding ', self class name, '>>testTouchObjects for VisualAge'. ^self].
	Dialect isObjectStudio ifTrue: [Transcript cr; show: 'Avoiding ', self class name, '>>testTouchObjects for ObjectStudio'. ^self].

	reaper delay: 0.25.
	proxy := TimedProxy readOneOf: Object where: nil in: nil.
	proxy glorpSecondsToLive: 2.
	reaper add: proxy.
	(Delay forSeconds: 1) wait.
	proxy glorpTouch.
	(Delay forSeconds: 1.1) wait.
	self should: [reaper includes: proxy].
	(Delay forSeconds: 2) wait.
	self shouldnt: [reaper includes: proxy]