REM Script Name		: client_info.sql
REM Author				: Craig Richards
REM Created			: 
REM Last Modified	:
REM Version				: 1.0
REM
REM Modifications		:
REM
REM Description		: Shows the client connections within the oracle database

-- 设置列格式和换行选项
COLUMN username FORMAT A15 WORD_WRAPPED  -- 用户名列，宽度为15字符，自动换行
COLUMN module FORMAT A15 WORD_WRAPPED     -- 模块列，宽度为15字符，自动换行
COLUMN action FORMAT A15 WORD_WRAPPED     -- 动作列，宽度为15字符，自动换行
COLUMN client_info FORMAT A30 WORD_WRAPPED -- 客户端信息列，宽度为30字符，自动换行

-- 查询Oracle数据库中的v$session视图，显示当前连接到数据库的客户端信息
-- 选择用户名（包括会话ID和序列号）、模块、动作和客户端信息列
-- 只显示那些模块、动作或客户端信息不为空的记录
SELECT username||'('||sid||','||serial#||')' username, module, action, client_info
FROM v$session
WHERE module||action||client_info IS NOT NULL;

REM End of Script


-- 解释一下：此段代码用于查询Oracle数据库中的v$session视图，显示当前连接到数据库的客户端信息。
-- 它会选择用户名（包括会话ID和序列号）、模块、动作和客户端信息列，并且只显示那些模块、动作或客户端信息不为空的记录。


