/****** Object:  StoredProcedure [dbo].[load_d_flight_plane_type]    Script Date: 13.10.2025 12:38:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[load_d_flight_plane_type]
as

truncate table dwh.d_flight_plane_type; --Удалит информацию внутри таблицы а не целую таблицу.

INSERT INTO dwh.d_flight_plane_type(d_flight_plane_type_value)
SELECT DISTINCT flight_plane_type FROM dsa.flight;

GO

