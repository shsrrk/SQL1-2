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

insert into stdTbl values ('�����', '�泲'), ('���ð�','����'), ('������', '���'), 
                        ('������', '���'), ('�ٺ�Ŵ','����');

insert into clubTbl values ('����', '101ȣ'), ('�ٵ�', '102ȣ'), ('�౸', '103ȣ'), ('����', '104ȣ');


insert into stdclubTbl (stdName,clubName)
values ('�����', '�ٵ�'),('�����','�౸'), ( '������', '�౸'), 
                            ( '������', '�౸'),( '������', '����'), ('�ٺ�Ŵ', '����');
