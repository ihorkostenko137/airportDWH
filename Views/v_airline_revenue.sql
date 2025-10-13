/****** Object:  View [dtm].[v_airline_revenue]    Script Date: 13.10.2025 12:58:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dtm].[v_airline_revenue] as
select d_airline_name, f_flight_datetime, f_ticket_airticket_price from dwh.f_ticket dwh_f_ticket
join dwh.f_flight dwh_f_flight on dwh_f_ticket.f_ticket_f_flight_id = dwh_f_flight.f_flight_id
join dwh.d_airline dwh_d_airline on dwh_f_flight.f_flight_d_airline_id = dwh_d_airline.d_airline_id
GO

