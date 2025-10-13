/****** Object:  StoredProcedure [dbo].[load_d_gate]    Script Date: 13.10.2025 12:38:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[load_d_gate]
as
truncate table dwh.d_gate; --Удалит информацию внутри таблицы а не целую таблицу.

INSERT INTO dwh.d_gate(d_terminal_ID, d_airport_ID, d_gate_name)
SELECT DISTINCT d_terminal_ID, d_airport_ID, gate_name FROM dsa.gate g
join dsa.terminal t on g.terminal_ID = t.terminal_ID
join dwh.d_terminal dt on t.terminal_name = dt.d_terminal_name;

GO

