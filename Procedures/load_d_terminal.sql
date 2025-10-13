/****** Object:  StoredProcedure [dbo].[load_d_terminal]    Script Date: 13.10.2025 12:39:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[load_d_terminal]
as

truncate table dwh.d_terminal; --Удалит информацию внутри таблицы а не целую таблицу.

insert into dwh.d_terminal (D_airport_ID, d_terminal_position, d_terminal_name)
SELECT d_airport_ID, terminal_position, terminal_name  FROM dsa.terminal t
join dsa.airport a on a.airport_ID=t.airport_ID
join dwh.d_airport da ON a.airport_code = da.d_airport_code
GO

