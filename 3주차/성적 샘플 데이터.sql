/*                                                                        */
/*              SampleDB.SQL - Creates the SampleDB database              */ 
/*                                                                        */
/*                                                                        */

SET NOCOUNT ON
GO

set nocount    on

USE master

declare @dttm VARCHAR(55)
select  @dttm=convert(VARCHAR,getdate(),102)
raiserror('SampleDB.SQL���� :  %s ',1,1,@dttm) with nowait

GO

if exists (select * from sysdatabases where name='SampleDB')
begin
  raiserror('������ �����ϴ� SampleDB�� �����ϴ� �� ....',0,1)
  DROP database SampleDB
end
GO

CHECKPOINT
go

raiserror('SampleDB database�� �����ϴ� ��....',0,1)
go

CREATE DATABASE SampleDB
GO

USE SampleDB
GO

if db_name() <> 'SampleDB'
   raiserror('SampleDB������..',0,1)

GO

-- �������̺� ����
CREATE TABLE ����
(�й� CHAR(9) PRIMARY KEY,
 �̸� VARCHAR(20),
 ���� CHAR(2),
 ��   CHAR(10),
 ���� INT)    

INSERT INTO ���� VALUES('201501001','�����','��','A',90)
INSERT INTO ���� VALUES('201501002','������','��','A',75)
INSERT INTO ���� VALUES('201501003','������','��','A',77)
INSERT INTO ���� VALUES('201501004','��ټ�','��','A',85)
INSERT INTO ���� VALUES('201501005','������','��','A',95)
INSERT INTO ���� VALUES('201501006','�ֿ�','��','A',80)
INSERT INTO ���� VALUES('201501007','�ں���','��','A',95)
INSERT INTO ���� VALUES('201501008','��ȿ��','��','A',90)
INSERT INTO ���� VALUES('201501009','���߱�','��','A',83)
INSERT INTO ���� VALUES('201501010','����','��','A',88)
INSERT INTO ���� VALUES('201501011','�̿���','��','B',75)
INSERT INTO ���� VALUES('201501012','����ȣ','��','B',84)
INSERT INTO ���� VALUES('201501013','�ڽ���','��','B',80)
INSERT INTO ���� VALUES('201501014','������','��','B',94)
INSERT INTO ���� VALUES('201501015','�̽±�','��','B',78)
INSERT INTO ���� VALUES('201501016','�ڹο�','��','B',71)
INSERT INTO ���� VALUES('201501017','������','��','B',87)
INSERT INTO ���� VALUES('201501018','���Ҷ�','��','B',90)
INSERT INTO ���� VALUES('201501019','�̹�ȣ','��','B',94)
INSERT INTO ���� VALUES('201501020','������','��','B',78)

-- ��ǰ ���̺� ����

CREATE TABLE ��ǰ
 (
 ��ǰ��ȣ INT PRIMARY KEY,
 ��ǰ�� CHAR(20),
 ���� CHAR(20),
 ���� CHAR(10),
 ���� INT
 )

 INSERT INTO ��ǰ VALUES(1,'����Ʈ','��Ʈ','BLACK',150000)
 INSERT INTO ��ǰ VALUES(2,'������Ʈ','��Ʈ','RED',130000)
 INSERT INTO ��ǰ VALUES(3,'¤������','����','BROWN',55000)
 INSERT INTO ��ǰ VALUES(4,'�ĵ�����','����','YELLOW',63000)
 INSERT INTO ��ǰ VALUES(5,'��������','����','BLACK',82000)
 INSERT INTO ��ǰ VALUES(6,'�ָ���ĿƮ','��ĿƮ','WHITE',65000)
 INSERT INTO ��ǰ VALUES(7,'�����������','����','WHITE',15000)
 INSERT INTO ��ǰ VALUES(8,'���콺','����','PINK',35000)
 INSERT INTO ��ǰ VALUES(9,'���ǽ�','���ǽ�','BLUE',95000)
 INSERT INTO ��ǰ VALUES(10,'�ݹ���','����','WHITE',35000)
 INSERT INTO ��ǰ VALUES(11,'�尩','�м���ȭ','RED',NULL)
 INSERT INTO ��ǰ VALUES(12,'�񵵸�','�м���ȭ','BEIGE',NULL)

 -- �Ǹ��̺� ����
 CREATE TABLE �Ǹ�
 (
 �ǸŹ�ȣ INT IDENTITY,
 ��ǰ��ȣ INT FOREIGN KEY REFERENCES ��ǰ(��ǰ��ȣ),
 �Ǹż��� INT,
 �Ǹų�¥ CHAR(10) 
 )
 
 INSERT INTO �Ǹ� VALUES(1,10,'2015/02/11')
 INSERT INTO �Ǹ� VALUES(2,12,'2015/02/11')
 INSERT INTO �Ǹ� VALUES(2,15,'2015/02/12')
 INSERT INTO �Ǹ� VALUES(4,21,'2015/02/13')
 INSERT INTO �Ǹ� VALUES(7,17,'2015/02/16')
 INSERT INTO �Ǹ� VALUES(4,11,'2015/02/16')
 INSERT INTO �Ǹ� VALUES(10,3,'2015/02/17')

 -- �����̺� ����
CREATE TABLE ����
(
 �����ڵ� CHAR(3) PRIMARY KEY,
 ������ VARCHAR(20)
)

INSERT INTO ���� VALUES('D01','���')
INSERT INTO ���� VALUES('D02','DB')
INSERT INTO ���� VALUES('D03','�׷���')
INSERT INTO ���� VALUES('D04','�˰���')
INSERT INTO ���� VALUES('D05','��������')
INSERT INTO ���� VALUES('D06','�л�ý���')


-- �������� ���̺� ����
CREATE TABLE ��������
(
 �������� CHAR(3) PRIMARY KEY,
 ������  VARCHAR(20),
 �����ڵ� CHAR(3) FOREIGN KEY REFERENCES ����(�����ڵ�),
 ���� CHAR(9),
)

INSERT INTO �������� VALUES('P01','��ö��','D02','201501013')
INSERT INTO �������� VALUES('P02','�ڿ���','D01','201501001')
INSERT INTO �������� VALUES('P03','�ּ���','D04','201501009')
INSERT INTO �������� VALUES('P04','�̿���','D02','201501005')
INSERT INTO �������� VALUES('P05','�ѽÿ�','D03','201501003')

-- ��������Ʈ ���̺� ����
CREATE TABLE ��������Ʈ
(�й� CHAR(9) PRIMARY KEY,
�̸� VARCHAR(20),
���� CHAR(9)
)

INSERT ��������Ʈ VALUES('201501001','�����','201501001')
INSERT ��������Ʈ VALUES('201501002','������','201501005')
INSERT ��������Ʈ VALUES('201501003','������','201501003')
INSERT ��������Ʈ VALUES('201501004','��ټ�','201501013')
INSERT ��������Ʈ VALUES('201501005','������','201501005')
INSERT ��������Ʈ VALUES('201501006','�ֿ�','201501013')
INSERT ��������Ʈ VALUES('201501007','�ں���','201501001')
INSERT ��������Ʈ VALUES('201501009','���߱�','201501009')
INSERT ��������Ʈ VALUES('201501010','����','201501003')
INSERT ��������Ʈ VALUES('201501012','����ȣ','201501001')
INSERT ��������Ʈ VALUES('201501013','�ڽ���','201501013')
INSERT ��������Ʈ VALUES('201501014','������','201501009')
INSERT ��������Ʈ VALUES('201501016','�ڹο�','201501009')
INSERT ��������Ʈ VALUES('201501019','�̹�ȣ','201501005')
INSERT ��������Ʈ VALUES('201501020','������','201501003')
INSERT ��������Ʈ VALUES('G01','����','201501005') -- FULL OUTER JOIN ������ ���� ���ڵ� ����

-- �л��� ���̺� ���� 
CREATE TABLE �л���
(�й� CHAR(9) PRIMARY KEY,
�̸� VARCHAR(20),
���� INT,
���̸� VARCHAR(20))

INSERT INTO �л��� VALUES('201501001','�����',90,'T2015')
INSERT INTO �л��� VALUES('201501002','������',75,'���ѵ���')
INSERT INTO �л��� VALUES('201501003','������',77,'�б�¯')
INSERT INTO �л��� VALUES('201501004','��ټ�',85,'T2015')
INSERT INTO �л��� VALUES('201501005','������',96,'BIG')
INSERT INTO �л��� VALUES('201501006','�ֿ�',80,'����Ʈ')
INSERT INTO �л��� VALUES('201501007','�ں���',95,'BIG')
INSERT INTO �л��� VALUES('201501008','��ȿ��',90,'�б�¯')
INSERT INTO �л��� VALUES('201501009','���߱�',83,'T2015')
INSERT INTO �л��� VALUES('201501010','����',88,'����Ʈ')
INSERT INTO �л��� VALUES('201501011','�̿���',75,'�б�¯')
INSERT INTO �л��� VALUES('201501012','����ȣ',84,'BIG')
INSERT INTO �л��� VALUES('201501013','�ڽ���',89,'���ѵ���')
INSERT INTO �л��� VALUES('201501014','������',94,'����Ʈ')
INSERT INTO �л��� VALUES('201501015','�̽±�',78,'���ѵ���')

-- merge ������ ��� ���̺�, �ҽ� ���̺� ����
 CREATE TABLE ���
 (��� INT PRIMARY KEY,
 �̸� VARCHAR(10) NOT NULL,
 ���� VARCHAR(10) NOT NULL,
 �μ� CHAR(20) NOT NULL)
 
 INSERT INTO ��� VALUES(1,'ȫ�浿','����','ȫ����')
 INSERT INTO ��� VALUES(2,'�輱��','����','�λ��')
 INSERT INTO ��� VALUES(3,'�̵���','����','ȫ����')
  
 CREATE TABLE �ҽ�
 (��� INT PRIMARY KEY,
 �̸� VARCHAR(10) NOT NULL,
 ���� VARCHAR(10) NOT NULL,
 �μ� CHAR(20) NOT NULL)
 
 INSERT INTO �ҽ� VALUES(1,'ȫ�浿','����','���������ú�')
 INSERT INTO �ҽ� VALUES(3,'�̵���','����','ȫ����')
 INSERT INTO �ҽ� VALUES(4,'������','����','������')

USE master

declare @dttm VARCHAR(55)
select  @dttm=convert(VARCHAR,getdate(),102)
raiserror('SampleDB.SQL�Ϸ� :  %s ',1,1,@dttm) with nowait

GO
