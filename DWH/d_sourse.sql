/****** Object:  Table [dwh].[d_source]    Script Date: 11.10.2025 16:27:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_source](
	[d_source_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_source_name] [varchar](100) NULL
) ON [PRIMARY]
GO

