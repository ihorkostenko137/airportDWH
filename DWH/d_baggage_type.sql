/****** Object:  Table [dwh].[d_baggage_type]    Script Date: 11.10.2025 16:19:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_baggage_type](
	[d_baggage_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_baggage_type_value] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[d_baggage_type_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

