conversion
blobDataToStreamConverter
	^DelegatingDatabaseConverter
		named: #blobDataToStream
		hostedBy: self
		fromStToDb: #convertBlobData:for:
		fromDbToSt: #nullConversion:for:.