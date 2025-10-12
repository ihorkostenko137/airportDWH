/****** Object:  Table [dsa].[customer]    Script Date: 11.10.2025 16:03:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[customer](
	[customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](100) NULL,
	[customer_nationality] [varchar](100) NULL,
	[customer_cardType] [varchar](max) NULL,
	[customer_cardNumber] [varchar](max) NULL,
	[customer_expiryDate] [date] NULL,
	[customer_birthday] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

