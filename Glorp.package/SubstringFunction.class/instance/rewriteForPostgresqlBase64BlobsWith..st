rewriting
rewriteForPostgresqlBase64BlobsWith: mainArgument
	"This is pretty awful. We expect our main argument to be a string, and we're a substring function, but we know that for some types, the string representation comes out differently in the database. In particular, the Postgresql driver stores strings into lobs in Base64. So, if our previous argument = the string size, rewrite it to the database size. This makes it work if we do
    (someObject blob copyFrom: 1 to: 3) = 'abc'
when in fact, the length of that string in the blob will be 4."
	| stream actualArgument base64Length base64Start |
	(mainArgument isGlorpExpression and: [mainArgument isConstantExpression]) ifFalse: [^self].
	self field type = self field platform blob ifFalse: [^self].
	(mainArgument value size \\ 3) = 0 ifFalse: [self error: 'Sorry, but you will need to use a number of characters that base64 encodes exactly'].
	base64Length := (mainArgument value size // 3) * 4.
	arguments at: 2 put: base64Length asGlorpExpression.
	base64Start := ((arguments first value // 3) * 4) + 1.
	arguments at: 1 put: base64Start asGlorpExpression.
	stream := WriteStream on: String new.
	self field type print: mainArgument value on: stream.
	actualArgument := (ReadStream on: stream contents) skip: 1; upTo: $'.
	mainArgument value: actualArgument.