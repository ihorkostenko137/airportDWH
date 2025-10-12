/****** Object:  Table [dwh].[d_staff]    Script Date: 11.10.2025 16:27:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_staff](
	[d_staff_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_staff_name] [varchar](100) NOT NULL,
	[d_staff_position] [varchar](max) NULL,
	[d_staff_nationality] [varchar](100) NULL,
	[d_staff_TypeOfEmployment] [varchar](max) NULL,
	[d_staff_PhoneNumber] [varchar](max) NULL,
	[d_staff_Birthday] [date] NOT NULL,
	[valid_to] [date] NULL,
	[valid_from] [date] NULL,
	[is_current] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

