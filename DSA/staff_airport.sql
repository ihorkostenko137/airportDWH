/****** Object:  Table [dsa].[staff_airport]    Script Date: 11.10.2025 16:09:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[staff_airport](
	[staff_airport_ID] [int] IDENTITY(1,1) NOT NULL,
	[staff_airport_name] [varchar](100) NULL,
	[airport_ID] [int] NOT NULL,
	[staff_airport_position] [varchar](max) NOT NULL,
	[staff_airport_nationality] [varchar](100) NULL,
	[staff_airport_WorkStartDate] [date] NULL,
	[staff_airport_WorkEndDate] [date] NULL,
	[staff_airport_TypeOfEmployment] [varchar](max) NOT NULL,
	[staff_airport_PhoneNumber] [varchar](max) NOT NULL,
	[staff_airport_EmploymentVerification] [bit] NOT NULL,
	[staff_airport_Salary] [money] NULL,
	[staff_airport_Birthday] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_airport_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

