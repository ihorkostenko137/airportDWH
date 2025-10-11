/****** Object:  Table [dsa].[flight]    Script Date: 11.10.2025 16:03:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[flight](
	[flight_ID] [int] IDENTITY(1,1) NOT NULL,
	[airline_ID] [int] NOT NULL,
	[flight_datetime] [datetime] NULL,
	[flight_from_airport_ID] [int] NOT NULL,
	[flight_to_airport_ID] [int] NOT NULL,
	[flight_plane_type] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[flight_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

