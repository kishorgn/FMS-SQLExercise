create  table  Passenger 
(
	passid int primary key,
	passname varchar(20),
	passemail varchar(20),
	passdob date
);

create table Flight
(
	flightid int primary key,
	flightsource varchar(20),
	flightdest varchar(20),
	flightdate date,
	flightseat int(4),
	ticketcost float
);

create table Booking
(
	bookingid int primary key,
	flightid int,
	bookdate date,
	foreign key(flightid) references Flight(flightid)
);

create table Booking_details
(
	bookingid int,
	passid int,
	primary key(bookingid,passid),
	foreign key(bookingid) references Booking(bookingid),
	foreign key(passid) references Passenger(passid)
);
