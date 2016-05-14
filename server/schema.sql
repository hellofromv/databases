CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  user_id int NOT NULL auto_increment,
  PRIMARY KEY (user_id),
  username varchar(25) DEFAULT NULL,
  UNIQUE(username)
);


CREATE TABLE rooms (
  room_id int NOT NULL auto_increment,
  PRIMARY KEY (room_id),
  room varchar(25) DEFAULT NULL,
  UNIQUE(room)
);


CREATE TABLE messages (
  chat_id int NOT NULL auto_increment,
  PRIMARY KEY (chat_id),
  posted_on datetime NOT NULL,
  user_id int NOT NULL,
  room_id int NOT NULL,
  message text NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/