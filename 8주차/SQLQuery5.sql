USE pubs;

create table stdtbl

(    stdName nvarchar(10) not null primary key,
    addr nchar(4) not null
);

create table clubtbl
(    clubName nvarchar(10) not null primary key,
    roomNo nchar(4) not null
);

create table stdclubtbl
(
    num int identity NOT NULL PRIMARY KEY,
    stdName nvarchar(10) not null
    foreign key references stdTbl(stdName),
    clubName nvarchar(10) not null
	foreign key references clubTbl(clubName)
);

insert into stdTbl values ('김범수', '경남'), ('성시경','서울'), ('조용필', '경기'), 
                        ('은지원', '경북'), ('바비킴','서울');

insert into clubTbl values ('수영', '101호'), ('바둑', '102호'), ('축구', '103호'), ('봉사', '104호');


insert into stdclubTbl (stdName,clubName)
values ('김범수', '바둑'),('김범수','축구'), ( '조용필', '축구'), 
                            ( '은지원', '축구'),( '은지원', '봉사'), ('바비킴', '봉사');
