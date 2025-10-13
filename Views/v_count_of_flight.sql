/****** Object:  View [dtm].[v_count_of_flights]    Script Date: 13.10.2025 12:58:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dtm].[v_count_of_flights] as
select d_airline_name, count(*) count_of_flights from dwh.f_flight dwh_f_flight 
join dwh.d_airline dwh_d_airline on dwh_f_flight.f_flight_d_airline_id = dwh_d_airline.d_airline_ID
Group by d_airline_name
GO

