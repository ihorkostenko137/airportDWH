/****** Object:  StoredProcedure [dbo].[load_d_airline]    Script Date: 13.10.2025 12:36:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[load_d_airline]
as

truncate table dwh.d_airline;

insert into dwh.d_airline (d_airline_name , d_airline_team)
SELECT airline_name , airline_team FROM dsa.airline
;

GO

