/****** Object:  StoredProcedure [dbo].[load_dwh]    Script Date: 13.10.2025 12:39:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[load_dwh]
AS
BEGIN
    SET NOCOUNT ON;

    -- Dimensions (independent first)
    EXEC dbo.load_d_airport;
    EXEC dbo.load_d_airline;
    EXEC dbo.load_d_terminal;
    EXEC dbo.load_d_gate;
    EXEC dbo.load_d_flight_plane_type;
    EXEC dbo.load_d_source;

    EXEC dbo.load_d_baggage_type;
    EXEC dbo.load_d_airticket_type;
    EXEC dbo.load_d_seat;
    EXEC dbo.load_d_customer;

    -- Facts (after dimensions)
    EXEC dbo.load_dwh_f_flight;
    EXEC dbo.load_dwh_f_ticket;   -- используй ЭТУ (с underscore), не load_dwh.f_ticket
END
GO