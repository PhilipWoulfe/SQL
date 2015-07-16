CREATE TABLE [dbo].[Customer]
(
	[customerID] INT NOT NULL PRIMARY KEY, 
    [firstName] CHAR(50) NOT NULL, 
    [lastName] CHAR(50) NOT NULL, 
    [address] VARCHAR(200) NULL
)
