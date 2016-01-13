functions
initializeFunctions
	"DB2 doesn't allow CAST(date AS timestamp), but it does have a TIMESTAMP function."

	| baseExists dbSpecificExists selectList baseNotExists dbSpecificNotExists |
	super initializeFunctions.
	functions
		at: #, put: (InfixFunction named: '+');
		at: #timestamp: put: ((PrefixFunction named: 'TIMESTAMP') type: (self timestamp)); "TIMESTAMP(date, time)"
		at: #time0 put: ((StandaloneFunction named: 'TIME(''00:00:00'')') type: (self time));
		at: #castTo: put: ((PrefixFunction named: 'CAST') separator: ' AS '). "CAST(aThing AS aType)"
		"at: #like: put: (InfixFunction named: 'LIKE').
		at: #copyFrom:to: put: (SubstringFunction named: 'SUBSTRING');"

	"Like Oracle, SQL Server doesn't allow functions like EXISTS in a field list,
	but will allow a select there as an argument to a function, such as CASE.
	So print it that way if we're in the select list."

	baseExists := functions at: #exists:.
	dbSpecificExists := DualRoleFunction new.
	dbSpecificExists function: '#exists:'.
	dbSpecificExists whereClauseVersion: baseExists.
	selectList := Case new argumentTypes: (Array with: (self varchar: 1) with: self integer with: self integer).
	selectList argumentModifierBlock: [:function :args | 
		function base: args first.
		Array with: 'x' asGlorpExpression with: 1 asGlorpExpression with: 0 asGlorpExpression].
	dbSpecificExists selectListVersion: selectList.
	dbSpecificExists type: self integer.
	functions at: #exists: put: dbSpecificExists.

	"And similarly NOT EXISTS"
	baseNotExists := functions at: #notExists:.
	dbSpecificNotExists := DualRoleFunction new.
	dbSpecificNotExists function: '#notExists:'.
	dbSpecificNotExists whereClauseVersion: baseNotExists.
	selectList := Case new argumentTypes: (Array with: (self varchar: 1) with: self integer with: self integer).
	selectList argumentModifierBlock: [:function :args | 
		function base: args first.
		Array with: 'x' asGlorpExpression with: 0 asGlorpExpression with: 1 asGlorpExpression].
	dbSpecificNotExists selectListVersion: selectList.
	dbSpecificNotExists type: self integer.
	functions at: #notExists: put: dbSpecificNotExists.

"Duration arithmetic functions - DB2 does not tolerate direct combinations of integers and dates / timestamps.  First we list the functions that extract integers from summed or differences dates, e.g.
	(each endDate - each startDate) year > 3
would return rows where the difference exceeded three years."
	functions
		at: #microsecond put: ((PrefixFunction named: 'MICROSECOND') type: (self integer));
		at: #second put: ((PrefixFunction named: 'SECOND') type: (self integer));
		at: #minute put: ((PrefixFunction named: 'MINUTE') type: (self integer));
		at: #hour put: ((PrefixFunction named: 'HOUR') type: (self integer));
		at: #day put: ((PrefixFunction named: 'DAY') type: (self integer));
		at: #month put: ((PrefixFunction named: 'MONTH') type: (self integer));
		at: #year put: ((PrefixFunction named: 'YEAR') type: (self integer)).
"If a column holds integers which in fact signify durations, use the following functions to convert to durations in expressions, e.g.
	each startDate + each daysToBonus days < Date today
would return rows where elapsed time from start exceeded the bonus duration."
	functions
		at: #microseconds put: ((PostfixFunction named: 'MICROSECONDS') type: (self date));
		at: #seconds put: ((PostfixFunction named: 'SECONDS') type: (self date));
		at: #minutes put: ((PostfixFunction named: 'MINUTES') type: (self date));
		at: #hours put: ((PostfixFunction named: 'HOURS') type: (self date));
		at: #days put: ((PostfixFunction named: 'DAYS') type: (self date));
		at: #months put: ((PostfixFunction named: 'MONTHS') type: (self date));
		at: #years put: ((PostfixFunction named: 'YEARS') type: (self date)).