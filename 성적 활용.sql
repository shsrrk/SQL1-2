select  학번, 이름 as '학생 이름', 반, 점수 'DB 점수' 
	-- 적은 순서대로 결과가 나타남 --
 from 성적
 order by 반 asc, 점수 desc, 학번 asc  --asc > 오름차순, desc > 내림차순 --