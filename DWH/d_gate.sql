/****** Object:  Table [dwh].[d_gate]    Script Date: 11.10.2025 16:22:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_gate](
	[d_gate_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_terminal_ID] [int] NOT NULL,
	[d_airport_ID] [int] NOT NULL,
	[d_gate_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[d_gate_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

