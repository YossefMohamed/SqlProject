

-- create a table of Cinemas
create table Cinemas
(
  CINEMA_ID int not null,
  Location varchar(20) not null,
  No_hall int not null,
  Phone varchar2(20) not null ,
  constraint CINEMA_ID primary key (CINEMA_ID),
  constraint Cinema_location unique (Location),
  constraint Cinema_Phone unique (Phone),
  FOREIGN KEY (AUDITORIUM_ID) REFERENCES auditoriums(AUDITORIUM_ID)
  
);


-- create a table of shows
CREATE TABLE Shows (
  SHOW_ID INTEGER PRIMARY KEY,
  Duration time NOT NULL,
  Free_Seats INTEGER NOT NULL,
  Start_Time timestamp NOT NULL,
  Ticket_Price float NOT NULL,
  FOREIGN KEY (MOVIE_ID) references movie(MOVIE_ID) 
);


-- create a table of admins
CREATE TABLE Admins (
  ADMIN_ID INTEGER PRIMARY KEY,
  Email varchar(50) NOT NULL unique,
  Name varchar(50) NOT NULL ,
  Password varchar(30) NOT NULL,
  FOREIGN KEY (CINEMA_ID) REFERENCES Cinema(CINEMA_ID)
);








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
