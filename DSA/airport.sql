/****** Object:  Table [dsa].[airport]    Script Date: 11.10.2025 15:28:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[airport](
	[airport_ID] [int] IDENTITY(1,1) NOT NULL,
	[airport_name] [varchar](max) NULL,
	[airport_position] [varchar](max) NULL,
	[airport_code] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[airport_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

