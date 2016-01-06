testing
canUseInWhereClause: aValue type: aType
	"This is mostly for test support purposes. If we know we can't use a particular kind of value in the where clause on some database, don't try."

	(super canUseInWhereClause: aValue type: aType) ifFalse: [^false].
	"In DB2 we don't seem to be able to compare lobs against anything.
	But if you convert the lob itself, that works sometimes. Eg.,
		... WHERE CHAR(clb) = 'abcdefghijklmnop'.
		... WHERE SUBSTR(clb,1, 16) LIKE 'abcdefghijklmnop'.
		... WHERE CHAR(SUBSTR(clb,1, 16)) = 'abcdefghijklmnop'.
	Note that LIKE works with SUBSTR(), but = works with CHAR()."
	((Set with: (self blob) with: (self clob) with: (self nclob)) includes: aType) ifTrue: [^false].
	^true.