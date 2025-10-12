/****** Object:  Table [dsa].[airline]    Script Date: 11.10.2025 15:20:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[airline](
	[airline_ID] [int] IDENTITY(1,1) NOT NULL,
	[airline_name] [varchar](100) NULL,
	[airline_team] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[airline_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

