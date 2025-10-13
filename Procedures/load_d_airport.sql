/****** Object:  StoredProcedure [dbo].[load_d_airport]    Script Date: 13.10.2025 12:37:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[load_d_airport]
as

truncate table dwh.d_airport; --Удалит информацию внутри таблицы а не целую таблицу.

insert into dwh.d_airport (d_airport_name, d_airport_position, d_airport_code)
SELECT airport_name, airport_position, airport_code
FROM dsa.airport;
GO

