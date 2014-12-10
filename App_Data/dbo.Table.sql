CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Title] VARCHAR(50) NOT NULL, 
    [Synopsis] VARCHAR(MAX) NULL, 
    [Genre] VARCHAR(MAX) NULL, 
    [Actors] VARCHAR(MAX) NULL, 
    [Rating] FLOAT NULL, 
    [Poster] VARCHAR(50) NULL, 
    [Movie Length] INT NULL, 
    [Release Date] DATE NULL
)
