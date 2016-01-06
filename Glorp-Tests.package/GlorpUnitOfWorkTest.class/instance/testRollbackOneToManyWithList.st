tests
testRollbackOneToManyWithList
	"Check that dependents aren't being registered for the collection"
	| customer marker |
	"Lists only exist in VW"
	Dialect isVisualWorks ifFalse: [^self].
	marker := Object new.
	customer := GlorpCustomer example1.
	customer transactions: (customer transactions asList).
	customer transactions addDependent: marker.
	session beginUnitOfWork.
	session register: customer.
	20 timesRepeat: [customer addTransaction: (GlorpBankTransaction new)].
	session rollbackUnitOfWork.
	self assert: customer transactions class == (Dialect smalltalkAt: #List).
	self assert: customer transactions size = 2.
	self should: [customer transactions privateAt: 3] raise: Object subscriptOutOfBoundsSignal.
	self assert: (customer transactions dependents includes: marker).
	self deny: (session isRegistered: marker).