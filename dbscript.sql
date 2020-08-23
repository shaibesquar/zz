create table ticket ( !-- will be generated after webhook call from payment api
   -id serial primary key,
   code varchar(30),
   idEvent integer,
   eventName varchar(20),
   venueName varchar(20),
   hallName varchar(20),
   --idseat integer,
   price integer,
   class integer
);

create table ticketBuyer (
   id serial primary key,
   firstName varchar(20),
   lastName varchar(20),
   sex char(1),
   phoneNum integer,
   email varchar(30),
   birthYear integer, 
   creationDate Date,
   --subscribedTO integer
);

create table eventOrganizer(
   id serial primary key,
   orgName varchar(30),
   phoneNum integer,
   website varchar(30),
   --venue,
   --verified boolean
);

create type eventStatus as enum ('canceled','scheduled','stoped','in-progress','completed','on-hold');
create type ticketSaleStat as enum ('scheduled','open','closed');
create type eventType as enum ();

create table event (
   id serial primary key,
   eventName varchar(20),
   description varchar(100),
   idOrganizer integer,
   startDate date,
   endDate date,
   startTime time,
   endTime time,
   searchTag varchar(10),
   idvenue integer,
   idHall integer,
   idChart integer,
   eventType varchar(20),
   evstatus eventStatus,
   tickStat ticketSaleStat,
   numofTickClass integer
);

create table hall (
   id serial primary key,
   capacity integer,
   hallName varchar(20),
   idVenue integer !--- optional for transportation vehicles
   numoFloors integer
);

create table venue (
   id serial primary key,
   idOrg integer,
   location varchar(50), !-- url to html file containing map
   name varchar(20),
   type varchar(10),
   locationDescription varchar(50)
);

create type hallType as enum ('mixed','');
CREATE TYPE tagType as enum ('event','hall','venue','chart','report');

create table seatingChart ( !-- when should it be created?
   id serial primary key,
   idOrganizer integer,
   idHall integer,
   numOfSeats integer,
   hallType 
   seatingArrangment 
);

create table tag (
   id serial primary key,
   tag VARCHAR(10),
   type tagType
);

create table eventTag (
   idevent INTEGER,
   idtag INTEGER
);

create TABLE ventag (
   idven INTEGER,
   idtag integer
);

create table halltag (
   idhall integer,
   idtag integer
);

create table chartTag (
   idchart integer,
   idtag integer
);

create table seat (
   seatNum varchar(5),
   idChart integer,
   aisleNum varchar(2),
   rowNum varchar(3),
   reserved boolean,
   type varchar(10)
);

create table validator (
   id serial primary key,
   idOrg integer,
   key varchar(30),
   code 
);

create table admin ( 
   id serial primary key,
   idOrganizer integer,
   firstName varchar(20),
   lastName varchar(20),
   phoneNum integer,
   email varchar(30),
   creationDate date
);

-create table eventReport (
   idEvent 
   numofSoldTick

);

-create table history (

);


