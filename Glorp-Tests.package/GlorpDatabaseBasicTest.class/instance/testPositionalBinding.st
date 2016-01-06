tests
testPositionalBinding
	| selectResult | 
	"This is more of a low-level db functionality test than a glorp test, but it's convenient to be able ot write it here"
	Dialect isVisualWorks ifFalse: [^self].
	[self accessor beginTransaction.
	self accessor executeSQLStringNoResult: 'INSERT INTO STUFF VALUES (10,''abc'')'.
	self accessor executeSQLStringNoResult: 'INSERT INTO STUFF VALUES (20,''def'')'.
	self accessor executeSQLStringNoResult: 'INSERT INTO STUFF VALUES (30,''ghi'')'.
	selectResult := self accessor 
		executeSQLString: 'SELECT * FROM STUFF WHERE ID = :2 OR ID = :17'
			binding: #(nil 10 nil nil nil nil nil nil nil nil nil nil nil nil nil nil 20).

	self assert: selectResult size = 2]
		ensure: [self accessor rollbackTransaction].