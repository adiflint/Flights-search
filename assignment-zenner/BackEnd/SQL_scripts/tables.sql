
--DROP TABLE flights;

CREATE TABLE [dbo].[flights](
	[id][UNIQUEIDENTIFIER] NOT NULL default NEWID(),
	[origin]  [varchar](300) NOT NULL ,
	[destination] [varchar](300) NOT NULL,
	[carrier] [varchar](300) NOT NULL,
	[flight_number][int] NOT NULL,
    [date][varchar](300),
	[nearby] [bit] NOT NULL,
	[codeshare] [bit] DEFAULT 0,
	[departing_after] [varchar](300) NOT NULL,
    [departing_before] [varchar](300) NOT NULL,
	[changed_after] [varchar](300) NOT NULL,
	[changed_before] [varchar](300) NOT NULL,
    [status] [bit] DEFAULT 0,
	[history] [bit] DEFAULT 0,
    [weather] [bit] DEFAULT 0,
    [round] [bit] DEFAULT 1,
	PRIMARY KEY (flight_number)
)