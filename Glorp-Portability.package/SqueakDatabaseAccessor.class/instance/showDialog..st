login
showDialog: aString 
	"Do 'Smalltalk at: #PopUpMenu' so that the code will compile in other dialects, even if it won't run"

	(Smalltalk at: #PopUpMenu) inform: aString