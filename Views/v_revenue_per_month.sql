/****** Object:  View [dtm].[v_revenue_per_month]    Script Date: 13.10.2025 12:58:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dtm].[v_revenue_per_month] as
select sum(f_ticket_airticket_price) revenue_per_month, MONTH(f_flight_datetime) month_of_2024 from dwh.f_ticket dwh_f_ticket
join dwh.f_flight dwh_f_flight on dwh_f_ticket.f_ticket_f_flight_id = dwh_f_flight.f_flight_id
Group by MONTH(f_flight_datetime)
GO

