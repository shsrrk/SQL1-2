--SELECT 제품번호 as '의류번호', 제품명 as '제품번호', 색상, 가격 FROM 제품--select 학번, 이름, 점수 from 학생평가--order by 점수 desc, 이름 asc--select distinct 종류--from 제품--select top 5 * from 성적 order by 점수--select top 5 with ties * from 성적 order by 점수 desc--set rowcount 0--SELECT 반 from 성적--select top 3 with ties 학번, 이름, 점수 from 학생평가 --order by 점수 asc--select 이름, 점수
--from 성적
--where 이름 like '%'

--select *
--from 성적
--where 이름 like '이%[기, 석]'

--학생평가 테이블
--학번 2015
--점수 90점대
--학생의 학번, 이름, 점수

--select *
--from 학생평가
--where 학번 like '2015%' and 점수 >= 90

--select *
--from 학생평가
--where 이름 like '김%'

--select *
--from 학생평가
--where 조이름 in ('무한도전')
--and 점수 >= 80

--select *
--from 학생평가
--where 점수 between 80 and 90

--select *
--from 학생평가
--where 조이름 in ('베스트', 'BIG')

--select *
--from 학생평가
--where 조이름 in ('베스트', 'BIG')

select *
from 제품
where 가격 is not null
order by 가격 desc