--select MAX(����) as �达�ְ����� 
--from ����
--where �̸� like '��%'

--select ��, min(����) as �ݺ���������
--from ����
--group by ��

--select ���̸�,AVG(����) 
--from �л���
--where ���̸� is not null
--group by ���̸�
--HAVING AVG(����) >= 85





--SELECT ���̸�, AVG(����) as �������
--from �л���
--group by ���̸�


--SELECT ���̸�, AVG(����) as �����������
--from �л���
--where ���̸� not in ('�б�¯')
--group by ���̸�


--SELECT ���̸�, AVG(����) as �����������
--from �л���
--where ���̸� not in ('�б�¯')
----�б�¯�� null ó���ؼ� ����� �� ������ �ϴµ� null�̶�� ����
--group by all ���̸�



--select ����, avg(����) as ��������հ���
--from ��ǰ
--group by ���� with rollup



--select * from ��������
--select * from ����
--select ��������, ������, ����.�����ڵ�, ������
--from �������� inner join ����
--on ��������.�����ڵ� = ����.�����ڵ�


select �й�, �̸�, ������, ������
from ��������Ʈ �� join �������� �� --���� ���� ���ְ� �����ָ� ġȯ ����
on ��.���� = ��.����
inner join ���� ��
on ��.�����ڵ� = ��.�����ڵ�
--������3�� ��ġ��
