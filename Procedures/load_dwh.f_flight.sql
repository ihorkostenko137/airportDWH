/****** Object:  StoredProcedure [dbo].[load_dwh.f_flight]    Script Date: 13.10.2025 12:39:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[load_dwh.f_flight]
as
INSERT INTO dwh.f_flight(f_flight_d_airline_id, f_flight_datetime, f_flight_from_d_airport_id, f_flight_to_d_airport_id, f_flight_d_flight_plane_type_id, f_flight_code)
SELECT d_airline_id, flight_datetime, dwhda.d_airport_ID f_flight_from_d_airport_id , dwhdai.d_airport_ID f_flight_to_d_airport_id, d_flight_plane_type_ID, flight_id FROM dsa.flight dsaf
JOIN dsa.airline dsaa on dsaf.airline_ID = dsaa.airline_ID
JOIN dwh.d_airline dwha on dsaa.airline_name = dwha.d_airline_name
JOIN dsa.airport dsaar on dsaf.flight_from_airport_ID = dsaar.airport_ID
JOIN dwh.d_airport dwhda on dsaar.airport_code = dwhda.d_airport_code
JOIN dsa.airport dsaai on dsaf.flight_to_airport_ID = dsaai.airport_ID
JOIN dwh.d_airport dwhdai on dsaai.airport_code = dwhdai.d_airport_code
JOIN dwh.d_flight_plane_type dwhdfpt on dsaf.flight_plane_type = dwhdfpt.d_flight_plane_type_value
WHERE dsaf.flight_datetime > (SELECT MAX (f_flight_datetime) FROM dwh.f_flight)
GO

