/****** Object:  StoredProcedure [dbo].[load_dwh]    Script Date: 13.10.2025 12:39:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[load_dwh]
as

exec dbo.load_d_airport;
exec dbo.load_d_airline;
exec dbo.load_d_terminal;
exec dbo.load_d_baggage_type;
exec [dbo].[load_d_seat];
--tu ti chybaju procedury
GO

