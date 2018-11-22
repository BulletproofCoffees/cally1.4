--���̺� ȣ��--------------------------------------------------------
-- �Ĵܰ���
select * from c_sj_Re; --�Ĵ��ۼ�
select * from c_sj_today; --��¥
select * from c_sj_foods; --���缺��
select * from c_sj_adfood; --��õ����
select * from c_sj_img; --�̹������

--����
DROP TABLE c_sj_today; --��¥
DROP TABLE c_sj_foods; --���缺��
DROP TABLE c_sj_adfood; --��õ����
DROP TABLE c_sj_img; --�̹������
DROP TABLE c_sj_Re; --�Ĵ��ۼ�

--������ ����----------------------------------------------------------------
--�Ĵܰ���
CREATE SEQUENCE seq_cally_c_sj_foods INCREMENT BY 1; --���缺��
CREATE SEQUENCE seq_cally_c_sj_adfood INCREMENT BY 1; --��õ����

--����
DROP SEQUENCE seq_cally_c_sj_foods;
DROP SEQUENCE seq_cally_c_sj_adfood;

--�Ĵܰ��� ������ ����----------------------------------------------------------------
insert into c_sj_foods --���缺��
values (seq_cally_c_sj_foods.nextval,'���.����','','','','','','100','49','14.36','0.2','0.03','11.14','0','0','0.01','');
insert into c_sj_foods --���缺��
values (seq_cally_c_sj_foods.nextval,'�ٳ���,����','','','','','','100','79','21.94','1.1','0.1','14.63','0','0','0.04','');
insert into c_sj_foods --���缺��
values (seq_cally_c_sj_foods.nextval,'��̻�,����','','','','','','100','224','0','17.88','17.19','0','52','84.1','6.38','');
insert into c_sj_foods --���缺��
values (seq_cally_c_sj_foods.nextval,'��ġ������','','','','','','100','151','24','4.6','4.1','','358','','','');
insert into c_sj_foods --���缺��
values (seq_cally_c_sj_foods.nextval,'�������','�Ե�����','','','','','150','699.75','0','17.78','40.05','13.03','598.5','','','');

insert into c_sj_today -- ��¥
values ('2018-10-20');
insert into c_sj_today -- ��¥
values ('2018-10-21');
insert into c_sj_today -- ��¥
values ('2018-10-22');
insert into c_sj_today -- ��¥
values ('2018-10-23');
insert into c_sj_today -- ��¥
values ('2018-10-24');
insert into c_sj_today -- ��¥
values ('2018-10-25');
insert into c_sj_today -- ��¥
values ('2018-10-26');
insert into c_sj_today -- ��¥
values ('2018-10-27');
insert into c_sj_today -- ��¥
values ('2018-10-28');
insert into c_sj_today -- ��¥
values ('2018-10-29');
insert into c_sj_today -- ��¥
values ('2018-10-30');

 --�Ĵ��ۼ� �ڵ�-���̵�-��¥-������-����-��ǰ�ڵ�
insert into c_sj_Re
values ('1','2018-10-20','1','3','1');
insert into c_sj_Re --�Ĵ��ۼ�
values ('2','2018-10-20','1','2','2');
insert into c_sj_Re --�Ĵ��ۼ�
values ('3','2018-10-20','1','1','2');
insert into c_sj_Re --�Ĵ��ۼ�
values ('4','2018-10-20','1','1','1');
insert into c_sj_Re
values ('5','2018-10-20','1','1','2');
insert into c_sj_Re --�Ĵ��ۼ�
values ('6','2018-10-20','1','1','1');
insert into c_sj_Re --�Ĵ��ۼ�
values ('7','2018-10-20','1','1','2');
insert into c_sj_Re
values ('1','2018-10-20','3','1','3');
insert into c_sj_Re --�Ĵ��ۼ�
values ('2','2018-10-20','3','3','3');
insert into c_sj_Re --�Ĵ��ۼ�
values ('3','2018-10-20','3','2','3');
insert into c_sj_Re --�Ĵ��ۼ�
values ('4','2018-10-20','3','2','3');
insert into c_sj_Re
values ('5','2018-10-20','3','1','4');
insert into c_sj_Re --�Ĵ��ۼ�
values ('6','2018-10-20','3','2','5');
insert into c_sj_Re --�Ĵ��ۼ�
values ('7','2018-10-20','3','1','4');

insert into c_sj_Re
values ('1','2018-10-21','1','2','1');
insert into c_sj_Re --�Ĵ��ۼ�
values ('2','2018-10-21','1','4','2');
insert into c_sj_Re --�Ĵ��ۼ�
values ('3','2018-10-21','1','1','2');
insert into c_sj_Re --�Ĵ��ۼ�
values ('4','2018-10-21','1','2','1');
insert into c_sj_Re
values ('5','2018-10-21','1','3','2');
insert into c_sj_Re --�Ĵ��ۼ�
values ('6','2018-10-21','1','1','1');
insert into c_sj_Re --�Ĵ��ۼ�
values ('7','2018-10-21','1','1','2');
insert into c_sj_Re
values ('1','2018-10-21','3','2','3');
insert into c_sj_Re --�Ĵ��ۼ�
values ('2','2018-10-21','3','3','3');
insert into c_sj_Re --�Ĵ��ۼ�
values ('3','2018-10-21','3','3','3');
insert into c_sj_Re --�Ĵ��ۼ�
values ('4','2018-10-21','3','1','3');
insert into c_sj_Re
values ('5','2018-10-21','3','2','4');
insert into c_sj_Re --�Ĵ��ۼ�
values ('6','2018-10-21','3','3','5');
insert into c_sj_Re --�Ĵ��ۼ�
values ('7','2018-10-21','3','2','4');



insert into c_sj_img -- �̹���
values (1,'2018-10-20','a.img');
insert into c_sj_img -- �̹���
values (2,'2018-10-20','b.img');
insert into c_sj_img -- �̹���
values (3,'2018-10-20','c.img');
insert into c_sj_img -- �̹���
values (4,'2018-10-20','d.img');
insert into c_sj_img -- �̹���
values (5,'2018-10-20','e.img');
insert into c_sj_img -- �̹���
values (6,'2018-10-20','f.img');
insert into c_sj_img -- �̹���
values (7,'2018-10-20','g.img');
insert into c_sj_img -- �̹���
values (1,'2018-10-21','a1.img');
insert into c_sj_img -- �̹���
values (2,'2018-10-21','b2.img');
insert into c_sj_img -- �̹���
values (3,'2018-10-21','c3.img');
insert into c_sj_img -- �̹���
values (4,'2018-10-21','d4.img');
insert into c_sj_img -- �̹���
values (5,'2018-10-21','e5.img');
insert into c_sj_img -- �̹���
values (6,'2018-10-21','f6.img');
insert into c_sj_img -- �̹���
values (7,'2018-10-21','g7.img');






insert into c_sj_adfood --��õ����
values (SEQ_CALLY_C_SJ_ADFOOD.nextval,'2','2','��õ����');
insert into c_sj_adfood --��õ����
values (SEQ_CALLY_C_SJ_ADFOOD.nextval,'2','3','��õ����2');
insert into c_sj_adfood --��õ����
values (SEQ_CALLY_C_SJ_ADFOOD.nextval,'2','4','��õ����3');





--��¥ �Լ�
CREATE OR REPLACE FUNCTION c_sj_day
(pDate IN Date, pFormat IN VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
  -- ���� ��¥�� ����
  RETURN TO_CHAR(pDate, pFormat);
END;















