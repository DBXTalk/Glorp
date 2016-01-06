Users can delete an object from their database and then create another object with the same primary key all in the same unit of work.  Glorp does the same thing for link tables.  In both cases, Glorp attempts to replace the matching delete and insert statements with an update statement.  However Glorp expects to set the keys itself in link tables and will complain if they are already there.  Test that user-forced delete and insert with the same primary keys works for objects, but that invalid link table delete and insert will be caught.