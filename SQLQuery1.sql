/*select ABS(-456)
select CEILING(456.654)
select FLOOR(123.456)
select PI()
select POWER(65,2)
select RAND()*99+1
select ROUND(123.456,0)
select SQRT(4)*/


/*select SQRT(100)
select ROUND(PI(),6)
select POWER(5,3)
select FLOOR(RAND()*50)-4*/


/*
select ASCII('Q'), CHAR(65)
-- ASCII > ���ڸ� �ƽ�Ű �ڵ�� ��ȯ, CHAR > �ƽ�Ű �ڵ忡 �ش��ϴ� ���ڸ� ǥ��--
select CHARINDEX('server', 'SQLserver ,2022')
-- ���忡�� �ش� �ܾ ã�Ƴ��� �ڵ� --
select LEFT('SQLserver' ,2), RIGHT('SQLserver' ,2)
 -- ���ʺ��� 2��°, �����ʺ��� 2��° --
select LEN('SQLserver'), LOWER('Apple'), UPPER('Apple')
-- LEN > �� ������ ����, LOWER > ���� ��ü ����, UPPER > ���� ��ü �ø� --
select LTRIM('   SQLserver    '), RTRIM('    SQLserver    ')
-- LTRIM ���� ���� ����, RTRIM ������ ���� ���� --
select REPLICATE('SQL', 3)
-- �ش� ���� n�� �ݺ� --
select REPLACE('SQLserver', 'Q', 'P')
-- ���忡�� �ش��ϴ� ���ڸ� �ٸ� ���ڷ� ��ȯ --
select REVERSE('apple')
-- ������ ������ --
select SUBSTRING('SQLserver',4 ,6)
-- ���忡�� Ư���� ��ġ���� Ư���� ��ġ������ ���ڸ� ��Ÿ�� --
*/




select GETDATE()
select DATENAME(day, getdate())
select DATENAME(dw, getdate())
select DATEPART(day, getdate())
select DATEPART(dw, getdate())
select DATEDIFF(day, getdate(), '2023-12-31') 
select DATEADD(day, 10, getdate())
select DATEADD(week, 10, getdate())
select DAY(getdate()), MONTH(getdate()), YEAR(getdate())

 
select DATENAME(dw, DATEDIFF(day, getdate(), '2024-9-18'))
select DATEDIFF(day, getdate(), '2023-12-25'), DATEDIFF(week, getdate(), '2023-12-25'), DATEDIFF(month, getdate(), '2023-12-25') 
select DATEADD(day, 100, getdate()), DATEADD(week, 10, getdate()), DATEADD(month, 4, getdate())