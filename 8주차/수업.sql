--SELECT title 책명, pub_name 출판사명, qty 수량
--FROM titles T join publishers P
--on t.pub_id = P.pub_id
--join sales s
--on t.title_id = s.title_id
--where qty >= 10
--order by 출판사명  --정렬에 대한 함수


--SELECT T.stdName 이름, addr 동아리정보, CT.clubName 동아리, roomNo
--FROM stdTbl T left outer join stdclubTbl C  --성시경의 이름을 null로 받고
--on T.stdName = C.stdName
--left outer join clubTbl CT --여기서도 그대로 성시경의 이름을 null로 받고
--on C.clubName = CT.clubName
--order by 이름


--SELECT 전공.전공코드, 전공명, 교수명 as 지도교수
--FROM 전공 LEFT OUTER JOIN 지도교수
--ON 전공.전공코드 = 



--SELECT  조원.학번 조원학번, 조원.이름 조원이름, 조장.학번 조장학번, 조장.이름 조장이름
--FROM 팀프로젝트 조원 join 팀프로젝트 조장
--ON 조원.조장  = 조장.학번   --셀프조인


--SELECT 학번, 이름
--FROM 팀프로젝트
--UNION 
--SELECT 지도교수, 교수명
--FROM 지도교수 --UNION


SELECT 교수명
FROM 지도교수
UNION ALL
SELECT 교수명
FROM 지도교수  --UNION ALL
