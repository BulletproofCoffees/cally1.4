CREATE TABLE test_guest(m_title NVARCHAR2(100));
INSERT INTO test_member VALUES ('�迵��');
select * from test_guest;


 SELECT * FROM ���̺��;--���̺���
DROP TABLE ���̺��;--���̺����
 CREATE sequence ������ start with 1 increment BY 1 NOCYCLE; ---����������
  DROP SEQUENCE ��������; ---����������
  
  ALTER TABLE ���̺�� DROP PRIMARY KEY;--�⺻Ű ����
  ALTER TABLE ���̺�� DROP CONSTRAINT �÷���;--fk����
 
  --���̺����
  CREATE TABLE �̸�( 
  no NUMBER(ũ��) NOT NULL, --��ȣ
   �̸�  VARCHAR2(30) , -- ���� 
    �̸� DATE DEFAULT SYSDATE, -- �ۼ���
     constraint ������ primary key(�÷���),--�⺻Ű ����
      CONSTRAINT Ű������ FOREIGN KEY(�÷���) REFERENCES �θ����̺��(�θ��÷���)--rfŰ����
 );
 
--�÷��߰� 
 ALTER TABLE ���̺��
ADD �߰��� �÷���  ������ ����;



--table_seq��� �������� �������� ���ϴ� ���۰����� ������ �����Ѵ�. ���⼭�� 300���� ���ϰڽ��ϴ�.(-300�� �˴ϴ�.)
ALTER SEQUENCE �������̸�
INCREMENT BY ������
NOCACHE
NOCYCLE;
--�������� ȣ���մϴ�. ���ϴ� ����ŭ �����Ѱ� Ȯ�� �Ͻ� �� �ֽ��ϴ�.
SELECT table_seq.nextval FROM dual;


DELETE FROM ���̺��; --������ ����


CREATE OR REPLACE VIEW ��� AS .....SELECT ... ; --�����
DROP VIEW ���;--�����

 