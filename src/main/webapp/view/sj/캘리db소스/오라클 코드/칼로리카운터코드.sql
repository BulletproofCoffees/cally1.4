--���̺� ȣ��--------------------------------------------------------
--����
select * from c_member c; --ȸ��
select * from c_admin; --������
select * from c_te; --ȸ���ǰ�
-- �Ĵܰ���
select * from c_sj_Re; --�Ĵ��ۼ�
select * from c_sj_today; --��¥
select * from c_sj_foods; --���缺��
select * from c_sj_adfood; --��õ����
select * from c_sj_img; --�̹������

--���� ��Į�θ�--------------------------------------
select 
a.mem_id ���̵�,c_sj_day(b.day,'yyyy-MM-dd') ������¥,SUM(b.f_no*f.nutr_cont1) ��Į�θ�,SUM(b.f_no*f.nutr_cont2) ź��ȭ��,SUM(b.f_no*f.nutr_cont3) �ܹ���,SUM(b.f_no*f.nutr_cont4) ����
from c_member a,c_sj_re b,c_sj_foods f,c_sj_today d
--WHERE
--and a.mem_id = 'rm'
--and d.day ='2018-10-23'
GROUP BY a.mem_id,b.day
;

--�Ϻ� ��Į�θ�����-----------------------------------------------
select 
a.mem_id ���̵�,c_sj_day(b.day,'yyyy-MM-dd') ������¥,SUM(b.f_no*f.nutr_cont1) ������Į�θ�
from c_member a,c_sj_re b,c_sj_foods f,c_sj_today d
--WHERE
--and a.mem_id = 'rm'
--and d.day ='2018-10-23'
GROUP BY a.mem_id,b.day
;

--��� �ջ�-------------------------------------------------------
select SUM(plus) ����Į�θ� from (
select 
a.mem_id ���̵�,c_sj_day(b.day,'yyyy-MM-dd') ������¥,SUM(b.f_no*f.nutr_cont1) plus
from c_member a,c_sj_re b,c_sj_foods f,c_sj_today d
WHERE
a.mem_id = 'rm'
--and d.day ='2018-10-23'
GROUP BY a.mem_id,b.day
),c_member
;

--Ȩȭ��------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--�ֱ� �ۼ��� �Ĵ� 3��-------------------------------
select * from (
select 
a.mem_id ���̵�,c_sj_day(b.day,'yyyy-MM-dd') �ۼ���¥,i.img �̹���,SUM(b.f_no*f.nutr_cont1) ��Į�θ�,SUM(b.f_no*f.nutr_cont2) ź��ȭ��,SUM(b.f_no*f.nutr_cont3) �ܹ���,SUM(b.f_no*f.nutr_cont4) ����
from c_sj_img i,c_member a,c_sj_re b,c_sj_foods f
WHERE 
i.mem_num =a.mem_num 
and i.day = b.day
and i.mem_num = b.mem_num
and a.mem_id = 'rm'
GROUP BY a.mem_id,b.day,i.img
ORDER BY b.day DESC
) 
where rownum <= 3
;

select * from c_sj_adfood;

--Į�θ� �ۼ�------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--�Ĵ� ���
insert into c_sj_Re
values ('���̵��ڵ�','2018-00-00','�������ڵ�','����','��ǰ�ڵ�');

--�˻�------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from c_sj_foods  WHERE desc_kor = '�������';
select 
 f_no ��ǰ�ڵ�,
    DESC_KOR ��ǰ��, 
    SERVING_WT ��ȸ������,
    nutr_cont1 Į�θ� ,
    nutr_cont2 ź��ȭ��,
    nutr_cont3 �ܹ���,
    nutr_cont4 ����,
    ROUND(nutr_cont1/SERVING_WT,1) g��Į�θ�,
    ROUND(nutr_cont2/SERVING_WT,1) g��ź��,
    ROUND(nutr_cont3/SERVING_WT,1) g��ܹ���,
    ROUND(nutr_cont4/SERVING_WT,1) g������,
    ROUND((nutr_cont2/SERVING_WT)*100,1) ź������,
    ROUND((nutr_cont3/SERVING_WT)*100,1) �ܹ����,
    ROUND((nutr_cont4/SERVING_WT)*100,1) �������,
    nutr_cont5,
    nutr_cont6,
    nutr_cont7,
    nutr_cont8,
    nutr_cont9,
    img1,
    img2,
    img3,
    img4
    from c_sj_foods 
    WHERE desc_kor = ''
   ;

--��ǰ ���
insert into c_sj_foods
values (seq_cally_c_sj_foods.nextval,'��ǰ��','�̹���1','�̹���2','�̹���3','�̹���3','1ȸ������ (g)','���� (kcal)','ź��ȭ�� (g)','�ܹ��� (g)','���� (g)','��� (g)','��Ʈ�� (mg)','�ݷ����׷� (mg)','��ȭ����� (g)','Ʈ��������� (g)');

--��ǰ ����
 UPDATE c_sj_foods
     SET 
     img1 = ''
     ,img2 = ''
     ,img3 = ''
     ,img4 = ''
     WHERE F_NO = '';
     
--������-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELETE c_sj_adfood WHERE f_no = '2'; --����
