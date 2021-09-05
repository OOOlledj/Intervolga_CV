/*
Чем отличаются запросы:
SELECT * FROM a, b WHERE a.id=b.a_id
SELECT * FROM a JOIN b ON a.id=b.a_id
*/

create database task_3;
use task_3;

create table a( 
    id int (10) AUTO_INCREMENT,
    name varchar (20) NOT NULL,
    PRIMARY KEY(id)
);

create table b( 
    id int (10) AUTO_INCREMENT, 
    email varchar (50) NOT NULL, 
    a_id int (10) NOT NULL, 
    PRIMARY KEY (id), 
    FOREIGN KEY (a_id) REFERENCES a (id)
);

insert into a values('1456', 'ooolledj');
insert into a values('5901', 'nicknamer');
insert into b values('6790', 'ooolledj@yandex.ru', '1456');

select * from a, b where a.id = b.a_id;
/*
+------+----------+------+--------------------+------+
| id   | name     | id   | email              | a_id |
+------+----------+------+--------------------+------+
| 1456 | ooolledj | 6790 | ooolledj@yandex.ru | 1456 |
+------+----------+------+--------------------+------+
1 row in set (0,01 sec)
*/

select * from a JOIN b ON a.id = b.a_id;
/*
+------+----------+------+--------------------+------+
| id   | name     | id   | email              | a_id |
+------+----------+------+--------------------+------+
| 1456 | ooolledj | 6790 | ooolledj@yandex.ru | 1456 |
+------+----------+------+--------------------+------+
1 row in set (0,01 sec)
*/

/*попробуем левое присоединение*/
select * from a LEFT JOIN b ON a.id = b.a_id;
/*
+------+-----------+------+--------------------+------+
| id   | name      | id   | email              | a_id |
+------+-----------+------+--------------------+------+
| 1456 | ooolledj  | 6790 | ooolledj@yandex.ru | 1456 |
| 5901 | nicknamer | NULL | NULL               | NULL |
+------+-----------+------+--------------------+------+
2 rows in set (0,00 sec)
*/