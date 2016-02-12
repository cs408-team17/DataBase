create table User_info(
  user_id integer check (user_id > 0),
  uname varchar2(20) NOT NULL,
  upwd  varchar2(30) NOT NULL,
  umail varchar2(40) NOT NULL,
  umemo varchar2(140) NOT NULL;
  primary key(user_id));

create table Contact(
  user_id integer NOT NULL,
  cid integer check (cid > 0),
  primary key(user_id),
  foreign key(user_id) references User_info (user_id));

create table Group_info(
  user_id integer NOT NULL,
  gname varchar2(30),
  gid integer check (gid > 0),
  primary key(user_id),
  foreign key (user_id) references User_info (user_id));

INSERT INTO User_info VALUES (1,'XXX','password','xxx@gmail.com');
INSERT INTO User_info VALUES (2, 'YYY','pass','yyy@gmail.com');

INSERT INTO Contact VALUES (1, 2);

INSERT INTO Group_info VALUES (1, 'CS 448',1);
