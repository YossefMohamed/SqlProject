-- create a table Cinemas
create table Cinemas
(
  CINEMA_ID int not null,
  Location varchar(20) not null,
  No_hall int not null,
  Phone varchar2(20) not null ,
  constraint CINEMA_ID primary key (CINEMA_ID),
  constraint Cinema_location unique (Location),
  constraint Cinema_Phone unique (Phone),
  
);


-- create a table shows
CREATE TABLE Shows (
  SHOW_ID INTEGER PRIMARY KEY,
  Duration time NOT NULL,
  Free_Seats INTEGER NOT NULL,
  Start_Time timestamp NOT NULL,
  Ticket_Price float NOT NULL,
);



-- create a table customers
CREATE TABLE Customers (
    Customer_ID INTEGER,
    Customer_Email VARCHAR(40) UNIQUE NOT NULL,
    Customer_Password VARCHAR(40) UNIQUE NOT NULL,
    Customer_Phone VARCHAR(40) UNIQUE NOT NULL,
    PRIMARY KEY (Customer_ID)
);

-- create a table Bookings 
CREATE TABLE Bookings (
    Booking_ID INTEGER,
    Customer_ID INTEGER,
    Show_ID INTEGER,
    Seat_ID INTEGER,
    
    PRIMARY KEY (Booking_ID, Customer_ID, Show_ID, Seat_ID)
);


-- create a table Movies
create table Movies(
    Movie_ID integer not null,
    Name varchar(20)  not null,
    Rate decimal,
    ReleaseDate date ,
    Duration datetime,
    Type char not null ,
    Country varchar(20),
    Language char not null,
    Translated boolean ,
    Status char not null,

     PRIMARY KEY (Movie_ID)
);


-- create a table AuditoriumStatus
create table AuditoriumStatus(

);


-- create a table Admins 
CREATE TABLE Admins (
  ADMIN_ID INTEGER PRIMARY KEY,
  Email varchar(50) NOT NULL unique,
  Name varchar(50) NOT NULL ,
  Password varchar(30) NOT NULL,
  
);



-- create a table Auditoriums
CREATE TABLE Auditoriums(
    Auditorium_ID NUMBER ,
    Cinema_ID NUMBER ,
    Auditorium_Number INTEGER,
    
    PRIMARY KEY (Auditorium_ID)

);

-- create a table Seats
CREATE TABLE Seats(
    Seat_ID INTEGER ,
    Auditorium_ID INTEGER ,
    Status VARCHAR(4),
    Row_Number INTEGER ,
    Seat_Number INTEGER,
    PRIMARY KEY (Seat_ID)
);




-- adding foreign key for each table
ALTER TABLE Admins ADD FOREIGN KEY (CINEMA_ID) REFERENCES Cinema(CINEMA_ID);
ALTER TABLE Shows ADD FOREIGN KEY (MOVIE_ID) references movie(MOVIE_ID);
ALTER TABLE Bookings ADD FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID);
ALTER TABLE Bookings ADD FOREIGN KEY (Show_ID) REFERENCES Show(Show_ID);
ALTER TABLE Bookings ADD FOREIGN KEY (Seat_ID) REFERENCES Seat(Seat_ID);
ALTER TABLE AuditoriumStatus ADD FOREIGN KEY (Auditorium_ID) REFERENCES Auditoriums(Auditorium_ID);
ALTER TABLE AuditoriumStatus ADD FOREIGN KEY (Show_ID) REFERENCES SHOW(Show_ID);
ALTER TABLE Auditoriums ADD  FOREIGN KEY (Cinema_ID)REFERENCES Cinema(Cinema_ID);
ALTER TABLE Seats ADD FOREIGN KEY (Auditorium_ID)REFERENCES Auditorium(Auditorium_ID);
