CREATE USER dragonwood
IDENTIFIED BY dragonwood
DEFAULT TABLESPACE users
QUOTA 10m ON users;

GRANT create session, create table, create procedure, create view, create sequence
TO dragonwood;

