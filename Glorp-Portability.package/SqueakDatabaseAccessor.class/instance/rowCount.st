executing
rowCount

	|count|
	count := 0.
	connection result resultSets
		do: [:each| count := count + 
			(each completedResponse value subStrings: (Array with: Character space)) last asInteger].
	^count