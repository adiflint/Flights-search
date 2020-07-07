
--DROP TABLE flights;

CREATE TABLE [dbo].[flights](
	[flight_id][varchar](300) NOT NULL,
	[flight_number][int] NOT NULL,
	[airline_name][varchar](300) NOT NULL, 
	[airline_iata][varchar](300) NOT NULL, 
	[departure_time][varchar](300) NOT NULL, 
	[arrival_time][varchar](300) NOT NULL, 
	[origin_city]  [varchar](300) NOT NULL ,
	[destination_city] [varchar](300) NOT NULL,
	[origin_airport]  [varchar](300) NOT NULL ,
	[destination_airport] [varchar](300) NOT NULL
	PRIMARY KEY (flight_id)
)