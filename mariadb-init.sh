mariadb -u root -p1234 -e 'CREATE DATABASE forum;'
mariadb -u root -p1234 -e 'CREATE TABLE forum.accounts(id INT(11) PRIMARY KEY AUTO_INCREMENT, username VARCHAR(40), email VARCHAR(60), salt VARCHAR(10), password VARCHAR(64), isadmin INT(1));'
mariadb -u root -p1234 -e 'CREATE TABLE forum.subjects(id INT(11) PRIMARY KEY AUTO_INCREMENT, idauthor INT(11), title TEXT, description TEXT);'
mariadb -u root -p1234 -e 'CREATE TABLE forum.messages(id INT(11) PRIMARY KEY AUTO_INCREMENT, idauthor INT(11), idsubject INT(11), content TEXT);'
