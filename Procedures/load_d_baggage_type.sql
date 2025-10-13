/****** Object:  StoredProcedure [dbo].[load_d_baggage_type]    Script Date: 13.10.2025 12:37:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[load_d_baggage_type]
as

truncate table dwh.d_baggage_type; --Удалит информацию внутри таблицы а не целую таблицу.

insert into dwh.d_baggage_type(d_baggage_type_value)
SELECT DISTINCT airticket_baggage_type  FROM dsa.airticket         --SELECT DISTINCT - выбирает один тип данных один раз, одно значение без повторений


GO

