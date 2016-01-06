initialize-release
useModificationTracker
	Dialect isVisualWorks ifFalse: [^self].
	modificationTracker := (Smalltalk
		at: #'Glorp.GlorpVWWriteBarrierTracker'
		ifAbsent: [nil]) ifNotNil: [:class | class new].
	modificationTracker session: self.