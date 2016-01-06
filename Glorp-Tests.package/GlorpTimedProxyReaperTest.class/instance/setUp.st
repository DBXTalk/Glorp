support
setUp
	Dialect isVisualAge ifTrue: [Transcript cr; show: 'Avoiding ', self class name, ' for VisualAge'. ^self].
	Dialect isObjectStudio ifTrue: [Transcript cr; show: 'Avoiding ', self class name, ' for ObjectStudio'. ^self].

	reaper := TimedProxyReaper new.
	reaper delay: 0.5.