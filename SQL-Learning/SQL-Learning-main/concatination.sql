SELECT
	FirstName + ' ' + LastName as fullName
	FROM
		[Person].[Person]
	

--Or if we want to format it differently


SELECT
	LastName + ' ' + FirstName as fullName
	FROM
		[Person].[Person]
		
		