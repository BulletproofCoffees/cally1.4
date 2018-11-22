commit;
--���̺� ȣ��--------------------------------------------------------
--����
select * from c_member c; --ȸ��
select * from c_admin; --������
select * from c_te; --ȸ���ǰ�

--������ ����----------------------------------------------------------------
--����
CREATE SEQUENCE seq_cally_member INCREMENT BY 1 ; --ȸ��
CREATE SEQUENCE seq_cally_admin INCREMENT BY 1 ; --������

DROP SEQUENCE seq_cally_member;
DROP SEQUENCE seq_cally_admin;


--������ ����--------------------------------------------------------------------------
--truncate table c_member;

--����------------------
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','rm','rm','rm@naver.com','�賲��');
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','jin','jin','jin@naver.com','�輮��');
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','suga','suga','suga@naver.com','������');
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','j-hope','j-hope','j-hope@naver.com','��ȣ��');
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','jimin','jimin','jimin@naver.com','������');
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','v','v','v@naver.com','������');
insert into c_member --ȸ��
(MEM_NUM,mem_state,mem_id,mem_pw,mem_email,mem_name)
values (seq_cally_member.nextval,'y','jungkook','jungkook','jungkook@naver.com','������');
select * from c_member c; --ȸ��


insert into c_admin --������
values (seq_cally_admin.nextval,'test','test12','test@naver.com');
select * from c_admin; --������


-- ���� m,w
insert into c_te --ȸ���ǰ�
values (1,'m','25','165','50','2000');
insert into c_te --ȸ���ǰ�
values (2,'m','27','165','50','2000');
insert into c_te --ȸ���ǰ�
values (3,'m','26','165','50','2000');
insert into c_te --ȸ���ǰ�
values (4,'m','25','165','50','2000');
insert into c_te --ȸ���ǰ�
values (5,'m','24','165','50','2000');
insert into c_te --ȸ���ǰ�
values (6,'m','24','165','50','2000');
insert into c_te --ȸ���ǰ�
values (7,'m','22','165','50','2000');
select * from c_te; --ȸ���ǰ�







--ȸ�� ���ν��� ����
create or replace procedure p_add_member(
p_m_mem_id c_member.mem_id%type,
p_m_mem_pw C_MEMBER.MEM_PW%type,
p_m_mem_email c_member.mem_email%type,
p_m_mem_name C_MEMBER.MEM_NAME%type
)
is
begin
insert into c_member values(seq_cally_member.nextval,'y',p_m_mem_id,p_m_mem_pw,p_m_mem_email,p_m_mem_name);
commit;
end;
-- ȸ�� ���ν��� ���๮
execute p_add_member('pro_id_11','pro_pw_11','procedure@test.com','���ν����׽�Ʈ');



create or replace procedure p_update_member(
p_m_mem_code C_MEMBER.MEM_code%type,
p_m_mem_pw C_MEMBER.MEM_PW%type,
p_m_mem_npw nvarchar2
)
is
begin
update c_member set mem_pw = p_m_mem_npw, mem_code = p_m_mem_code where mem_pw = p_m_mem_pw;
commit;
end;
execute p_update_member(5,'pro_pw','pro_update');


--ȸ������ ���ν���
create or replace procedure p_s_del_member(
p_m_mem_code C_MEMBER.MEM_NUM%type
)
is
begin
update c_member set MEM_STATE = 'n' where MEM_NUM = p_m_mem_code;
commit;
end;
execute p_s_del_member(5);