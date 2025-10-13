/****** Object:  StoredProcedure [dbo].[dbo_load_d_airticket_type]    Script Date: 13.10.2025 12:37:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[dbo_load_d_airticket_type]
as
truncate table dwh.d_airticket_type;
INSERT INTO dwh.d_airticket_type(d_airticket_type_value)
SELECT DISTINCT airticket_type FROM dsa.airticket
GO

