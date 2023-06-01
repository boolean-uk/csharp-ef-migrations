# C# Entity Framework Migrations


1. Fork this repository
2. Clone your fork to your machine
3. Open the ef.intro.sln in Visual Studio
5. Note:  There are no controllers in this project!!  A current way of writing endpoints is in the EndPoint directory.
		  See How the AuthorApi.cs & BookApi.cs both are extension methods of the WebApplication class which 
		  is returned in the Program.cs from a builder.Build() call.  This way we can call this to initialize from the 
		  extension method.  See also how the data is populated via the Seed() method call.  Note how we are 
		  randomly generating names of both authors & books!

## Key Outcomes   

Understand how to apply Entity Framework migrations, using the commands: add-migration, update-database, script-migration



## Exercise   

-Add the LibraryRepository.cs and any models/code from the previous exercise.   
-Configure this project for a secure connecton to your Elephant SQL instance.   
-Configure this project for Entity Framework migrations.   
-Run an "Add-Migration InitialMigration" command to create a first migration.   
-Add a ReleaseDate (Use DateTime type) property to the Book class.  Ensure this is populated in the Seed method (TIP.  you can't use the DateTime.Now to create the date as PostgreSQL requires a UTC date so use: DateTime.UtcNow    
 Run a "Add-Migration AddedReleaseDateToBook" to the project.   Run the update-database to change the db.   Note how you don't have any data in the Postgres instance, so you'll need to TRUNCATE TABLE Authors CASCADE (do this for all tables) to empty  
 the records, then rebuild your project which will load the data with the dates.

## Extension
-Create a script-migration






