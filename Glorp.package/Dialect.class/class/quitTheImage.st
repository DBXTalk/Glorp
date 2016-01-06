general portability
quitTheImage
	"Quit the entire image"

	self isGNU ifTrue: [^ self error: 'Not implemented yet'.].
	self isVisualWorks ifTrue: [^(self smalltalkAt: #ObjectMemory) quit].
	(self isSqueak or: [ self isPharo ]) 
		ifTrue: [^(self smalltalkAt: #SmalltalkImage) current snapshot: false andQuit: true].
	self isDolphin ifTrue: [^(self smalltalkAt: #SessionManager) current quit].
	self isVisualAge ifTrue: [^  self error: 'Not implemented yet'.].
	self isObjectStudio ifTrue: [^ self error: 'Not implemented yet'.].
	self error: 'not implemented yet'.
	^ self