--SELECT title å��, pub_name ���ǻ��, qty ����
--FROM titles T join publishers P
--on t.pub_id = P.pub_id
--join sales s
--on t.title_id = s.title_id
--where qty >= 10
--order by ���ǻ��  --���Ŀ� ���� �Լ�


--SELECT T.stdName �̸�, addr ���Ƹ�����, CT.clubName ���Ƹ�, roomNo
--FROM stdTbl T left outer join stdclubTbl C  --���ð��� �̸��� null�� �ް�
--on T.stdName = C.stdName
--left outer join clubTbl CT --���⼭�� �״�� ���ð��� �̸��� null�� �ް�
--on C.clubName = CT.clubName
--order by �̸�


--SELECT ����.�����ڵ�, ������, ������ as ��������
--FROM ���� LEFT OUTER JOIN ��������
--ON ����.�����ڵ� = 



--SELECT  ����.�й� �����й�, ����.�̸� �����̸�, ����.�й� �����й�, ����.�̸� �����̸�
--FROM ��������Ʈ ���� join ��������Ʈ ����
--ON ����.����  = ����.�й�   --��������


--SELECT �й�, �̸�
--FROM ��������Ʈ
--UNION 
--SELECT ��������, ������
--FROM �������� --UNION


SELECT ������
FROM ��������
UNION ALL
SELECT ������
FROM ��������  --UNION ALL
