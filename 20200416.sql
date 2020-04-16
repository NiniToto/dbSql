SELECT *          -- ��� �÷� ������ ��ȸ
FROM prod;        -- �����͸� ��ȸ�� ���̺� ���

--Ư�� �÷��� ���ؼ��� ��ȸ : SELECT �÷� 1, �÷� 2, ...
--prod_id, prod_name�÷��� prod ���̺����� ��ȸ;

SELECT prod_id, prod_name
FROM prod;

--prod ���̺����� ��� �����͸� ��ȸ�ϴ� ������ �ۼ��ϼ���
SELECT *
FROM lprod;

--buyer ���̺����� buyer_id, buyer_nmae �÷��� ��ȸ�ϴ� ������ �ۼ��ϼ���.
SELECT buyer_id, buyer_name
FROM buyer;

--cart �׸������� ��� �����͸� ��ȸ�ϴ� ������ �ۼ��ϼ���.
SELECT *
FROM cart;

--member ���̺����� mem_id, mem_pass, mem_name �÷��� ��ȸ�ϴ� ������ �ۼ��ϼ���.
SELECT mem_id, mem_pass, mem_name
FROM member;

--SQL ���� : JAVA�� �ٸ��� ���� X, �Ϲ��� ��Ģ����,
/* 
sql ������ Ÿ�� : ����, ����, ��¥(date);
users ���̺��� (4/14 ����� ����) ����
users ���̺��� ��� �����͸� ��ȸ;
*/

/*
��¥ Ÿ�Կ� ���� ���� : ��¥�� +, - ���� ����
date type + ���� :  date���� ������ ��ŭ �̷��� �̵�
date type - ���� :  date���� ������ ��ŭ ���ŷ� �̵�
*/

SELECT userid, reg_dt, reg_dt + 5, reg_dt - 5
FROM users;

/*
�÷� ��Ī : ���� �÷����� �����ϰ� ���� ��
syntax : ���� �÷��� [as] ��Ī��Ī
��Ī ��Ī�� ������ ǥ���Ǿ�� �� ��� ""���� ���´�.
���� ����Ŭ������ ��ü���� �빮�� ó�� �ϱ� ������ 
�ҹ��ڷ� ��Ī�� �����ϱ� ���ؼ��� ""�� ����Ѵ�.
*/

SELECT userid as id, userid id2, userid ���̵�
FROM users;

SELECT prod_id id, prod_name name
FROM prod;

SELECT lprod_gu gu, lprod_nm nm
FROM lprod;

SELECT buyer_id ���̾���̵�, buyer_name �̸�
FROM buyer;

--���ڿ� ����(���տ���) : || (���ڿ� ������ + �����ڰ� �ƴϴ�)
SELECT userid || 'test', reg_dt + 5, 'test', 15
FROM users;

SELECT '�� ' || userid || ' ��' 
FROM users;

SELECT userid || usernm
FROM users;

SELECT userid || usernm id_name,
     CONCAT(userid, usernm) AS concat_id_name
FROM users;

--sel_con1
/*
user_tables :  oracle���� �����ϴ� ���̺� ������ ��� �ִ� �� --> data dictionary
*/

SELECT table_name
FROM user_tables;

SELECT 'SELECT * FROM ' || table_name || ';' AS query
FROM user_tables;

/*
���̺��� ���� �÷��� Ȯ���� �� �˾ƾ� �Ѵ�.
1.  tool(sql developer)�� ���� Ȯ��
    ���̺� - Ȯ���ϰ��� �ϴ� ���̺�
    
2.  SELECT *
    FROM ���̺�
    ��ü ��ȸ -> ��� Ŀ���� ǥ��
    
3.  DESC ���̺���

4. data dictionary : user_tab_columns
*/

DESC emp;

SELECT *
FROM user_tab_columns;

/*
���ݱ��� ��� SELECT ����
��ȸ�ϰ��� �ϴ� �÷� ��� : SELECT
��ȸ�� ���̺� ��� : FROM
��ȸ�� ���� �����ϴ� ������ ��� : WHERE
WHERE ���� ����� ������ ��(TRUE)�� �� ����� ��ȸ
*/

--sql�� �� ���� : =

SELECT *
FROM users
WHERE userid = 'cony';

SELECT *
FROM users
WHERE userid = 'brown';

DESC emp;

SELECT *
FROM emp;

SELECT *
FROM dept;

--emp ���̺����� ������ ���� �μ���ȣ�� 30�� ���� ū �μ��� ���� ������ ��ȸ
SELECT *
FROM emp
WHERE deptno >= 30;

-- != �ٸ� ��, users ���̺����� ����� ���̵�(userid)�� brown�� �ƴ� ����ڸ� ��ȸ

SELECT *
FROM users
WHERE userid != 'brown';

/*
SQL ���ͷ�
���� : 20, 30.4, ...
���� : �̱� �����̼�
��¥ : TO_DATE('��¥���ڿ�', '��¥ ���ڿ��� ����')
*/

--1982�� 1�� 1�� ���Ŀ� �Ի��� ������ ��ȸ
SELECT *
FROM emp
WHERE hiredate >= TO_DATE('19820101', 'YYYYMMDD');

SELECT *
FROM emp
WHERE hiredate < TO_DATE('19820101', 'YYYYMMDD');

