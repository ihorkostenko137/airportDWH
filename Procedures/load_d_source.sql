/****** Object:  StoredProcedure [dbo].[load_d_source]    Script Date: 13.10.2025 12:38:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[load_d_source]
as
truncate table dwh.d_source;
-- union - zpojuje vysledky dvou selektov za padmenky ze rovnaky pocet sloubcu a stejny typ dat
INSERT INTO dwh.d_source(d_source_name)
select 'staff_airport' source_name
union
select 'staff_airline'
GO

