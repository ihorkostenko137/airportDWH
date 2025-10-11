/****** Object:  Table [dwh].[f_staff]    Script Date: 11.10.2025 16:24:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[f_staff](
	[f_staff_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_staff_ID] [int] NOT NULL,
	[d_airport_ID] [int] NULL,
	[f_staff_WorkStartDate] [date] NULL,
	[f_staff_WorkEndDate] [date] NULL,
	[f_staff_EmploymentVerification] [bit] NOT NULL,
	[f_staff_Salary] [money] NULL,
	[d_airline_ID] [int] NULL,
	[d_source_ID] [int] NOT NULL
) ON [PRIMARY]
GO

