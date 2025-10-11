/****** Object:  Table [dwh].[d_flight_plane_type]    Script Date: 11.10.2025 16:22:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_flight_plane_type](
	[d_flight_plane_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_flight_plane_type_value] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[d_flight_plane_type_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [C_flight_plane_type] UNIQUE NONCLUSTERED 
(
	[d_flight_plane_type_value] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

