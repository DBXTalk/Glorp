testing
supportsGroupWritingFor: aCommand
	"^aCommand supportsGroupWriting."
	"INSERT ...; INSERT ...; INSERT... fails,
	but this works: INSERT INTO table (id, c) VALUES (1,'1'), (2,'2'), (3,'3').
	For now, just do everything separately."
	^false