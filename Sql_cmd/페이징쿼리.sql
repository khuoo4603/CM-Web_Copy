--> mysql_install_db --datadir=C:\mariadb\data --service=mariaDBZip --port=3306 --password=1234
--> mysql -u root -p --port=3306
use Recycle
use userId
CREATE DATABASE Recycle default CHARACTER SET UTF8; 

CREATE TABLE logins (
    indexs INT(11) NOT NULL AUTO_INCREMENT,
	ids VARCHAR(100) NULL,
	passwords VARCHAR(300) NULL,
	names VARCHAR(50) NULL,
	PRIMARY KEY (indexs));

CREATE TABLE memory (
    indexs INT(11) NOT NULL AUTO_INCREMENT,
	ids VARCHAR(100) NULL,
	counts INT(11) NULL,
	cardboard INT(11) NULL,
	glass INT(11) NULL,
	metal INT(11) NULL,
	paper INT(11) NULL,
	plastic INT(11) NULL,
	trash INT(11) NULL,
	PRIMARY KEY (indexs));

insert into logins(ids, passwords, names)
            values("test", "test", "test")

insert into memory(ids, counts, cardboard, glass, metal, paper, plastic, trash)
            values("test", "0", "0", "0", "0", "0", "0", "0")

update memory set counts="1", cardboard="1", glass="0", metal="0", paper="0", plastic="0", trash="0"
            where ids="test"

insert into guestbook(title, writer, contents, wdate)
value("제목7", "작성자7", "내용7", now());


select * from guestbook;
select * from logins;

select * from guestbook limit 0, 5;   #시작값, 개수 


-- 최신에 쓴 글을 앞에 오게 하고 싶다 
select * from guestbook
order by id desc 
select * from guestbook
order by id desc 
limit 0, 5

-- 지웠다 다시 넣다. id가 값이 중간중간 빠져있어서 다시 일련번호를 붙여서 가져온다 

select 
        id, title, writer, contents, wdate, 
        @rownum:=@rownum+1 as rnum  
from guestbook, (select @rownum:=0) B

SHOW TABLES;
SHOW DATABASES;
SELECT * FROM logins;
SELECT * FROM memory;

SHOW FULL COLUMNS FROM logins;
