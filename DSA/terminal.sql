/****** Object:  Table [dsa].[terminal]    Script Date: 11.10.2025 16:09:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[terminal](
	[terminal_ID] [int] IDENTITY(1,1) NOT NULL,
	[airport_ID] [int] NOT NULL,
	[terminal_position] [varchar](100) NULL,
	[terminal_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[terminal_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

