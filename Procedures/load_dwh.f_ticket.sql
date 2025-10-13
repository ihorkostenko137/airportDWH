/****** Object:  StoredProcedure [dbo].[load_dwh.f_ticket]    Script Date: 13.10.2025 12:39:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[load_dwh.f_ticket]
as
INSERT INTO dwh.f_ticket(
	[f_ticket_d_customer_id] ,
	[f_ticket_f_flight_id] ,
	[f_ticket_d_airticket_baggage_type_id],
	[f_ticket_d_airticket_type_id],
	[f_ticket_d_seat_id],
	[f_ticket_airticket_price])
select  d_customer_ID, f_flight_id, d_baggage_type_id, d_airticket_type_id, d_seat_id, airticket_price
from dsa.airticket dsa_airticket
JOIN dsa.customer dsa_customer on dsa_airticket.customer_ID = dsa_customer.customer_ID
JOIN dwh.d_customer dwh_d_customer on dsa_customer.customer_name = dwh_d_customer.d_customer_name and dwh_d_customer.d_customer_is_current = 1 
-- после and условие благодаря которому определям самые новые записи и присоединяем(JOIN- джойнуем)
JOIN dwh.f_flight dwh_f_flight on dsa_airticket.flight_ID = dwh_f_flight.f_flight_code
JOIN dwh.d_baggage_type dwh_d_baggage_type on dsa_airticket.airticket_baggage_type = dwh_d_baggage_type.d_baggage_type_value
JOIN dwh.d_airticket_type dwh_d_airticket_type on dsa_airticket.airticket_type = dwh_d_airticket_type.d_airticket_type_value
JOIN dwh.d_seat dwh_d_seat on dsa_airticket.airticket_seat = dwh_d_seat.d_seat_value
GO

