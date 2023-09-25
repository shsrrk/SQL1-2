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
-- ASCII > 문자를 아스키 코드로 변환, CHAR > 아스키 코드에 해당하는 문자를 표시--
select CHARINDEX('server', 'SQLserver ,2022')
-- 문장에서 해당 단어를 찾아내는 코드 --
select LEFT('SQLserver' ,2), RIGHT('SQLserver' ,2)
 -- 왼쪽부터 2번째, 오른쪽부터 2번째 --
select LEN('SQLserver'), LOWER('Apple'), UPPER('Apple')
-- LEN > 총 문자의 길이, LOWER > 문장 전체 내림, UPPER > 문장 전체 올림 --
select LTRIM('   SQLserver    '), RTRIM('    SQLserver    ')
-- LTRIM 왼쪽 띄어쓰기 없앰, RTRIM 오른쪽 띄어쓰기 없앰 --
select REPLICATE('SQL', 3)
-- 해당 문장 n번 반복 --
select REPLACE('SQLserver', 'Q', 'P')
-- 문장에서 해당하는 글자를 다른 글자로 변환 --
select REVERSE('apple')
-- 문장을 뒤집음 --
select SUBSTRING('SQLserver',4 ,6)
-- 문장에서 특정한 위치부터 특정한 위치까지의 문자를 나타냄 --
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