/****** Object:  Table [dwh].[f_flight]    Script Date: 11.10.2025 16:24:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[f_flight](
	[f_flight_id] [int] IDENTITY(1,1) NOT NULL,
	[f_flight_d_airline_id] [int] NOT NULL,
	[f_flight_datetime] [datetime] NULL,
	[f_flight_from_d_airport_id] [int] NOT NULL,
	[f_flight_to_d_airport_id] [int] NOT NULL,
	[f_flight_d_flight_plane_type_id] [int] NOT NULL,
	[f_flight_code] [int] NOT NULL
) ON [PRIMARY]
GO

