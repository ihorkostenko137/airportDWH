/****** Object:  Table [dwh].[d_airline]    Script Date: 11.10.2025 16:13:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_airline](
	[d_airline_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_airline_name] [varchar](100) NULL,
	[d_airline_team] [varchar](100) NULL
) ON [PRIMARY]
GO

