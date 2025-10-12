/****** Object:  Table [dwh].[d_terminal]    Script Date: 11.10.2025 16:23:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_terminal](
	[d_terminal_ID] [int] IDENTITY(1,1) NOT NULL,
	[D_airport_ID] [int] NOT NULL,
	[d_terminal_position] [varchar](100) NULL,
	[d_terminal_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[d_terminal_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

