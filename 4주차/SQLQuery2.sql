--SELECT ��ǰ��ȣ as '�Ƿ���ȣ', ��ǰ�� as '��ǰ��ȣ', ����, ���� FROM ��ǰ--select �й�, �̸�, ���� from �л���--order by ���� desc, �̸� asc--select distinct ����--from ��ǰ--select top 5 * from ���� order by ����--select top 5 with ties * from ���� order by ���� desc--set rowcount 0--SELECT �� from ����--select top 3 with ties �й�, �̸�, ���� from �л��� --order by ���� asc--select �̸�, ����
--from ����
--where �̸� like '%'

--select *
--from ����
--where �̸� like '��%[��, ��]'

--�л��� ���̺�
--�й� 2015
--���� 90����
--�л��� �й�, �̸�, ����

--select *
--from �л���
--where �й� like '2015%' and ���� >= 90

--select *
--from �л���
--where �̸� like '��%'

--select *
--from �л���
--where ���̸� in ('���ѵ���')
--and ���� >= 80

--select *
--from �л���
--where ���� between 80 and 90

--select *
--from �л���
--where ���̸� in ('����Ʈ', 'BIG')

--select *
--from �л���
--where ���̸� in ('����Ʈ', 'BIG')

select *
from ��ǰ
where ���� is not null
order by ���� desc