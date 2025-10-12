/****** Object:  Table [dsa].[gate]    Script Date: 11.10.2025 16:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[gate](
	[gate_ID] [int] IDENTITY(1,1) NOT NULL,
	[terminal_ID] [int] NOT NULL,
	[airport_ID] [int] NOT NULL,
	[gate_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[gate_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

