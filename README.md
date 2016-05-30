Glorp (for _"Generic Lightweight Object-Relational Persistence"_) is a full-featured Object-Relational Mapper for Pharo.

Amongst those features you'll find some saving you from writing SQL queries by hand, managing    transactions that rollback the changes to the objects in your image or commit them to the database, writing simple and complex queries using plain Smalltalk syntax, and other features that we will cover in this introduction chapter and in the advanced topics chapter.

Read more about in the [Glorp book chapter](https://ci.inria.fr/pharo-contribution/job/PharoBookWorkInProgress/lastSuccessfulBuild/artifact/book-result/Glorp/Glorp.html), [also available for printing](https://ci.inria.fr/pharo-contribution/job/PharoBookWorkInProgress/lastSuccessfulBuild/artifact/book-result/Glorp/Glorp.pdf)

## Installation

### Core framework
    Metacello new
    	smalltalkhubUser: 'DBXTalk' project: 'Glorp';
    	configuration: 'Glorp';
    	version: #stable;
    	load. 

### Together with Garage drivers (recommended)
    Metacello new
    	smalltalkhubUser: 'Garage' project: 'GarageGlorp';
    	configuration: 'GarageGlorp';
    	version: #stable;
    	load. 

