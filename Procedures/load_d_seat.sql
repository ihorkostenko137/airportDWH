/****** Object:  StoredProcedure [dbo].[load_d_seat]    Script Date: 13.10.2025 12:38:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[load_d_seat]
as

truncate table dwh.d_seat; --Удалит информацию внутри таблицы а не целую таблицу.

insert into dwh.d_seat(d_seat_value)
SELECT DISTINCT airticket_seat FROM dsa.airticket;

GO

