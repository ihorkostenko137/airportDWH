/****** Object:  Table [dwh].[f_ticket]    Script Date: 11.10.2025 16:25:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[f_ticket](
	[f_ticket_id] [int] IDENTITY(1,1) NOT NULL,
	[f_ticket_d_customer_id] [int] NOT NULL,
	[f_ticket_f_flight_id] [int] NOT NULL,
	[f_ticket_d_airticket_baggage_type_id] [int] NOT NULL,
	[f_ticket_d_airticket_type_id] [int] NOT NULL,
	[f_ticket_d_seat_id] [int] NOT NULL,
	[f_ticket_airticket_price] [money] NOT NULL
) ON [PRIMARY]
GO

