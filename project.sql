-- create a table shows
CREATE TABLE Shows (
  SHOW_ID INTEGER PRIMARY KEY,
  Duration time NOT NULL,
  Free_Seats INTEGER NOT NULL,
  Start_Time timestamp NOT NULL,
  Ticket_Price float NOT NULL,
  FOREIGN KEY (MOVIE_ID) references movie(MOVIE_ID) 
);


-- create a table admins
CREATE TABLE Admins (
  ADMIN_ID INTEGER PRIMARY KEY,
  Email varchar(50) NOT NULL unique,
  Name varchar(50) NOT NULL ,
  Password varchar(30) NOT NULL,
  FOREIGN KEY (CINEMA_ID) REFERENCES Cinema(CINEMA_ID)
);
