REM 脚本名称		: ascii.sql
REM 作者			: Craig Richards
REM 创建日期		: 2008年2月6日
REM 最后修改日期	:
REM 版本			: 1.0
REM
REM 修改记录		:
REM
REM 描述			: 显示ASCII字符表

SET SERVEROUTPUT ON SIZE 10240  -- 设置服务器输出大小

DECLARE
   i NUMBER;  -- 声明变量i
   k NUMBER;  -- 声明变量k
BEGIN
   FOR k IN 33..255 LOOP  -- 循环遍历ASCII值从33到255
       DBMS_OUTPUT.PUT((to_char(k,'000'))||':'||chr(k)||'  ');  -- 输出ASCII值和对应字符
       IF k mod 8 = 0 THEN  -- 每8个字符换行
          DBMS_OUTPUT.PUT_LINE('');  -- 输出换行
       END IF;
   END LOOP;
END;
/

SHOW ERRORS  -- 显示错误信息
