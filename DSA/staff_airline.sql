/****** Object:  Table [dsa].[staff_airline]    Script Date: 11.10.2025 16:08:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[staff_airline](
	[staff_airline_ID] [int] IDENTITY(1,1) NOT NULL,
	[staff_airline_name] [varchar](100) NULL,
	[airline_ID] [int] NOT NULL,
	[staff_airline_position] [varchar](max) NOT NULL,
	[staff_airline_nationality] [varchar](100) NULL,
	[staff_airline_WorkStartDate] [date] NULL,
	[staff_airline_WorkEndDate] [date] NULL,
	[staff_airline_TypeOfEmployment] [varchar](max) NOT NULL,
	[staff_airline_PhoneNumber] [varchar](max) NOT NULL,
	[staff_airline_EmploymentVerification] [bit] NOT NULL,
	[staff_airline_Salary] [money] NOT NULL,
	[staff_airline_Birthday] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_airline_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

