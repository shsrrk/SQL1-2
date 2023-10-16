--select MAX(점수) as 김씨최고점수 
--from 성적
--where 이름 like '김%'

--select 반, min(점수) as 반별최저점수
--from 성적
--group by 반

--select 조이름,AVG(점수) 
--from 학생평가
--where 조이름 is not null
--group by 조이름
--HAVING AVG(점수) >= 85





--SELECT 조이름, AVG(점수) as 평균점수
--from 학생평가
--group by 조이름


--SELECT 조이름, AVG(점수) as 조별평균점수
--from 학생평가
--where 조이름 not in ('학교짱')
--group by 조이름


--SELECT 조이름, AVG(점수) as 조별평균점수
--from 학생평가
--where 조이름 not in ('학교짱')
----학교짱을 null 처리해서 결과에 다 나오긴 하는데 null이라고 나옴
--group by all 조이름



--select 종류, avg(가격) as 종류별평균가격
--from 제품
--group by 종류 with rollup



--select * from 지도교수
--select * from 전공
--select 지도교수, 교수명, 전공.전공코드, 전공명
--from 지도교수 inner join 전공
--on 지도교수.전공코드 = 전공.전공코드


select 학번, 이름, 교수명, 전공명
from 팀프로젝트 팀 join 지도교수 교 --옆에 띄어쓰기 해주고 적어주면 치환 가능
on 팀.조장 = 교.조장
inner join 전공 전
on 교.전공코드 = 전.전공코드
--데이터3개 합치기
