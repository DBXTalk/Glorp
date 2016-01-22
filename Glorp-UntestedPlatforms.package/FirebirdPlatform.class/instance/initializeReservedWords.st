constants
initializeReservedWords
	reservedWords := Set new.
	reservedWords 
		add: 'type';
		add: 'value';
		add: 'password';
		add: 'unique';
		add: 'date';
		add: 'current';
		add: 'order';
		add: 'active';
		add: 'action';
		add: 'database';
		add: 'table';
		add: 'timestamp';
		add: 'position'.