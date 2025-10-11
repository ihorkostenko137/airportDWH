/****** Object:  Table [dwh].[d_airport]    Script Date: 11.10.2025 16:15:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_airport](
	[d_airport_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_airport_name] [varchar](max) NULL,
	[d_airport_position] [varchar](max) NULL,
	[d_airport_code] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[d_airport_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

