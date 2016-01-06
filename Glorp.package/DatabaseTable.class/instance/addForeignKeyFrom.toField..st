deprecated
addForeignKeyFrom: sourceField toField: targetField
	self deprecated: #(#version '8.0' #sunset '8.1' #use #addForeignKeyFrom:to:).
	^self addForeignKeyFrom: sourceField to: targetField